make clobber
make -j12  EXTRA_CFLAGS+=-DGET_NDP_PERFORMENCE  EXTRA_CFLAGS+=-DRUN_COUNT=10000
make   EXTRA_CFLAGS+=-DGET_NDP_PERFORMENCE  EXTRA_CFLAGS+=-DRUN_COUNT=10000
cat run.sh
