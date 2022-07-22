sudo ./memcached -u root -m 0 -t 1 -o pslab_policy=pmem,pslab_file=/mnt/mem/pool,pslab_force
sudo rm -rf /mnt/mem/*

