/*
 Based on work by
         Vaibhav Gogte <vgogte@umich.edu>
         Aasheesh Kolli <akolli@umich.edu>


This file models the TPCC benchmark.
*/

////
//remove MT stuffs
//#include <pthread.h>
#include <memkind.h>
#include <dlfcn.h>
#include <iostream>
#include <vector>
#include <sys/time.h>
#include <string>
#include <fstream>
#include <cstring>
//#include "txopt.h"


#include <libpmem.h>
#include "tpcc_db.h"
#include "../include/txopt.h"

#define NUM_ORDERS 1000	//10000000
#define NUM_THREADS 1 

#define NUM_WAREHOUSES 1
#define NUM_ITEMS 10000//10000
#define NUM_LOCKS NUM_WAREHOUSES*10 + NUM_WAREHOUSES*NUM_ITEMS
TPCC_DB* tpcc_db[NUM_THREADS];

static inline uint64_t getCycle(){
	uint32_t cycles_high, cycles_low, pid;
	asm volatile ("RDTSCP\n\t" // rdtscp into eax and edx
					"mov %%edx, %0\n\t"
					"mov %%eax, %1\n\t"
					"mov %%ecx, %2\n\t"
					:"=r" (cycles_high), "=r" (cycles_low), "=r" (pid) //store in vars
					:// no input
					:"%eax", "%edx", "%ecx" // clobbered by rdtscp
				   );
  
	return((uint64_t)cycles_high << 32) | cycles_low;
}


void initialize(int tid, void * backUpLog) {
  tpcc_db[tid] = (TPCC_DB *)malloc(sizeof(TPCC_DB));
  tpcc_db[tid]->backUpInst = (struct backUpLog *)backUpLog;
  new(tpcc_db[tid]) TPCC_DB();
  tpcc_db[tid]->initialize(NUM_WAREHOUSES, NUM_THREADS);
  // fprintf(stderr, "Created tpcc at %p\n", (void *)tpcc_db[tid]);
}


//void new_orders(TxEngine* tx_engine, int tx_engn_type, TPCC_DB* tpcc_db, int thread_id, int num_orders, int num_threads, int num_strands_per_thread, std::atomic<bool>*wait) {
void* new_orders(void* arguments) {

  int thread_id = *((int*)arguments);
  // fprintf(stdout, "New order, thread: %d\n", thread_id);

  for(int i=0; i<NUM_ORDERS/NUM_THREADS; i++) {
    int w_id = 1;
    //There can only be 10 districts, this controls the number of locks in tpcc_db, which is why NUM_LOCKS = warehouse*10
    int d_id = tpcc_db[thread_id]->get_random(thread_id, 1, 10);
    int c_id = tpcc_db[thread_id]->get_random(thread_id, 1, 3000);
    // fprintf(stdout, "thread: %d, line: %d\n", thread_id, __LINE__);

    tpcc_db[thread_id]->new_order_tx(thread_id, w_id, d_id, c_id);
    // fprintf(stdout, "thread: %d, #%d\n", thread_id, i);
  }
  // fprintf(stdout, "thread: %d\n", thread_id);
  // return 0;
}



/////////////////Page fault handling/////////////////
#include <bits/types/sig_atomic_t.h>
#include <bits/types/sigset_t.h>
#include <signal.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>

#define SIGSTKSZ	8192

#define SA_SIGINFO    4		
#define SA_ONSTACK   0x08000000 /* Use signal stack by using `sa_restorer'. */
#define SA_RESTART   0x10000000 /* Restart syscall on signal return.  */
#define SA_NODEFER   0x40000000 /* Don't automatically block the signal when*/


stack_t _sigstk;
int updated_page_count = 0;
int all_updates = 0;
void * checkpoint_start;
void * page[50];
void * device;
double totTimeShadow = 0;

#define GRANULARITY 4096
/// @brief Signal handler to trap SEGVs.
//static void segvHandle(int signum, siginfo_t * siginfo, void * context) {

#define SWTIME
/// @brief Signal handler to trap SEGVs.
static void segvHandle(int signum, siginfo_t * siginfo, void * context) {

	

    void * addr = siginfo->si_addr; // address of access
	uint64_t pageNo = ((uint64_t)addr)/4096;
	unsigned long * pageStart = (unsigned long *)(pageNo*4096);

	
	// Check if this was a SEGV that we are supposed to trap.
    if (siginfo->si_code == SEGV_ACCERR) {
		mprotect(pageStart, 4096, PROT_READ|PROT_WRITE);
#ifdef SWTIME
    	uint64_t endCycles, startCycles,totalCycles;	
    	startCycles = getCycle();
#endif
//		memcpy(checkpoint_start + 4096, pageStart, 4096);
//		pmem_persist(checkpoint_start + 4096, 4096);

//				*((uint64_t*)device) = (uint64_t)(checkpoint_start + 4096);
//				*((uint64_t*)(device)+1) = 00;
//				*((uint64_t*)(device)+2) = (uint64_t)0.320580;
//  			*((uint64_t*)(device)+3) = ((uint64_t)(((0) << 16)| 6) << 32) | 4096;
//				*(((uint32_t*)(device))+255) =   (uint32_t)(((0) << 16)| 6);

#ifdef SWTIME
        endCycles = getCycle();
        totalCycles = endCycles - startCycles;
       
        totTimeShadow += ((double)totalCycles)/2000000000;
#endif 
				page[updated_page_count] = 0;

			updated_page_count = 0;
			all_updates = 0;
//		}
		all_updates ++;
		
		for(int i=0; i<updated_page_count; i++){
			if(page[i] == pageStart)
			return;
		}
		page[updated_page_count] = pageStart;
		//printf("test1 %lx %d %d\n",page[updated_page_count],updated_page_count,all_updates);

		updated_page_count++;
		//*((int *)checkpoint_start) = 10;
		//test++;
		//printf("test1 %lx %d\n",updated_page_count);
    } else if (siginfo->si_code == SEGV_MAPERR) {
		fprintf (stderr, "%d : map error with addr %p!\n", getpid(), addr);
		abort();
    } else {
		fprintf (stderr, "%d : other access error with addr %p.\n", getpid(), addr);
		abort();
    }
}

static void installSignalHandler(void) {
    // Set up an alternate signal stack.
	printf("page fault handler initialized!!\n");
    _sigstk.ss_sp = mmap(NULL, SIGSTKSZ, PROT_READ | PROT_WRITE,
        MAP_PRIVATE | MAP_ANON, -1, 0);
    _sigstk.ss_size = SIGSTKSZ;
    _sigstk.ss_flags = 0;
    sigaltstack(&_sigstk, (stack_t *) 0);

    // Now set up a signal handler for SIGSEGV events.
    struct sigaction siga;
    sigemptyset(&siga.sa_mask);

    // Set the following signals to a set
    sigaddset(&siga.sa_mask, SIGSEGV);
    sigaddset(&siga.sa_mask, SIGALRM);

    sigprocmask(SIG_BLOCK, &siga.sa_mask, NULL);

    // Point to the handler function.
    siga.sa_flags = SA_SIGINFO | SA_ONSTACK | SA_RESTART | SA_NODEFER;


    siga.sa_sigaction = segvHandle;
    if (sigaction(SIGSEGV, &siga, NULL) == -1) {
      perror("sigaction(SIGSEGV)");
      exit(-1);
    }

    sigprocmask(SIG_UNBLOCK, &siga.sa_mask, NULL);
	return;
}



void* open_device(const char* pathname)
{
	//int fd = os_open("/sys/devices/pci0000:00/0000:00:00.2/iommu/ivhd0/devices/0000:0a:00.0/resource0",O_RDWR|O_SYNC);
	int fd = open(pathname,O_RDWR|O_SYNC);
	if(fd == -1)
	{
		printf("Couldnt opene file!!\n");
		exit(0);
	}
	void * ptr = mmap(0,4096,PROT_READ|PROT_WRITE, MAP_SHARED,fd,0);
	if(ptr == (void *)-1)
	{
		printf("Could not map memory!!\n");
		exit(0);
	}
	printf("opened device without error!!\n");
	return ptr;
}

///////////////////////////////////////////////////////////////////
void installSignalHandler (void) __attribute__ ((constructor));
int main(int argc, char* argv[]) {
 
  device = open_device("/sys/devices/pci0000:00/0000:00:00.2/iommu/ivhd0/devices/0000:0a:00.0/resource0");

  ////
  //Remove all timing/stats stuffs
  /*
  std::cout<<"in main"<<std::endl;
  struct timeval tv_start;
  struct timeval tv_end;
  std::ofstream fexec;
  fexec.open("exec.csv",std::ios_base::app);
	*/

  size_t mapped_len;
  int is_pmem;
  void * backUpLogPtr;
  if ((backUpLogPtr = pmem_map_file("/mnt/mem/tpcc_db", sizeof(struct backUpLog)*NUM_THREADS,
        PMEM_FILE_CREATE, 0666, &mapped_len, &is_pmem)) == NULL) {
        fprintf(stderr, "pmem_map_file failed\n");
        exit(0);
  }

  for(int i=0;i<NUM_THREADS;i++){
    initialize(i, (backUpLogPtr + i*sizeof(struct backUpLog)));
  }
  // exit(0);
//CounterAtomic::initCounterCache();

  /*
  std::cout<<"num_threads, num_orders = "<< NUM_THREADS <<", "<<NUM_ORDERS <<std::endl;

  std::cout<<"done with initialization"<<std::endl;

  tpcc_db->populate_tables();

  std::cout<<"done with populating tables"<<std::endl;
  */
  pthread_t threads[NUM_THREADS];
  int id[NUM_THREADS];

  //gettimeofday(&tv_start, NULL);
  uint64_t endCycles, startCycles,totalCycles;

  startCycles = getCycle();
  
  for(int i=0; i<NUM_THREADS; i++) {
    id[i] = i;
    // fprintf(stderr, "create %d\n", i);
    ////
    //convert to ST version
    //new_orders((void *)(id+i));
    new_orders((void *)&id[i]);
  }
  endCycles = getCycle();
	totalCycles = endCycles - startCycles;
	
	double totTime = ((double)totalCycles)/2000000000;
	printf("total time = %f\ndata move time %f\n", totTime, totTimeShadow);

  ////
  //remote MT stuffs
  
  // for(int i=0; i<NUM_THREADS; i++) {
  //   pthread_join(threads[i], NULL);
  // }
  
  ////
  //Remove all timing stuffs
  /*
  gettimeofday(&tv_end, NULL);
  fprintf(stderr, "time elapsed %ld us\n",
          tv_end.tv_usec - tv_start.tv_usec +
              (tv_end.tv_sec - tv_start.tv_sec) * 1000000);

  fexec << "TPCC" << ", " << std::to_string((tv_end.tv_usec - tv_start.tv_usec) + (tv_end.tv_sec - tv_start.tv_sec) * 1000000) << std::endl;

  fexec.close();
  */
  //free(tpcc_db);

  //std::cout<<"done with threads"<<std::endl;

  return 0;

}
