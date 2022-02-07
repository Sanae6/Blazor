FILES=$(find -name *.c)

time riscv64-linux-gnu-gcc $FILES -mabi=lp64d -lm -march=rv64imafdc -O2 -o dna -static -w
#tar cf - dna | gzip -9cf > dna.tar.gz
cp dna /mnt/c/Users/Sanae/MultiMC/instances/oc2/.minecraft/oc2-shared
echo -ne '\a'
sleep 1
echo -ne '\a'
sleep 1
echo -ne '\a'
sleep 1