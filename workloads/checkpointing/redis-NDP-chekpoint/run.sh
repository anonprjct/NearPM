make USE_PMDK=yes STD=-std=gnu99
sudo rm -rf /mnt/mem/*
sudo ./src/redis-server redis.conf >out

