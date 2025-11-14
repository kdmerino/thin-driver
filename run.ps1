# run.ps1

gcc -c lib/driver.cpp -o driver.o;

ar rcs driver.lib driver.o

gcc src/main.cpp -L. -ldriver -o driver

./driver
