make -j12
sudo rm -rf /mnt/mem/*
sudo ./memcached -u root -m 0 -t 1 -o pslab_policy=pmem,pslab_file=/mnt/mem/pool,pslab_force > out

