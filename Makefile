#todos 
all: listing-1.1 listing-1.2 listing-1.3 
	listing-2.1 listing-2.2 listing-2.3 listing-2.4 listing-2.5 listing-2.6 listing-2.7 listing-2.8 listing-2.9 
	listing-3.1 listing-3.2 listing-3.3 listing-3.4 listing-3.5 listing-3.6 listing-3.7
	listing-5.1 listing-5.2 listing-5.3 listing-5.4 listing-5.5 listing-5.6 listing-5.7 listing-5.8 listing-5.9 listing-5.10 listing-5.11 listing-5.12
	

#1.1
listing-1.1: listing-1.2 listing-1.3
	mkdir -p bin/capitulo_1/1.1/
	g++ -o bin/capitulo_1/1.1/reciprocal bin/capitulo_1/1.1/main.o bin/capitulo_1/1.2/reciprocal.o

clean-1.1:
	rm -rf bin/capitulo_1/1.1/

#1.2
listing-1.2: src/capitulo_1/1.1/main.c 
	mkdir -p bin/capitulo_1/1.2/
	mkdir -p bin/capitulo_1/1.1/
	gcc -c  src/capitulo_1/1.1/main.c -I src/capitulo_1/1.3/ -o bin/capitulo_1/1.1/main.o
clean-1.2:
	rm -rf bin/capitulo_1/1.2/
	
#1.3
listing-1.3: 
	mkdir -p bin/capitulo_1/1.3/
	g++ -c src/capitulo_1/1.2/reciprocal.cpp -I src/capitulo_1/1.3/ -o bin/capitulo_1/1.2/reciprocal.o
clean-1.3:
	rm -rf bin/capitulo_1/1.3/

#2.1
listing-2.1:
	mkdir -p bin/capitulo_2/2.1/
	gcc -c -o bin/capitulo_2/2.1/arglist.o src/capitulo_2/2.1/arglist.c
	gcc -o bin/capitulo_2/2.1/arglist bin/capitulo_2/2.1/arglist.o
clean-2.1:
	rm -rf bin/capitulo_2/2.1/

#2.2
listing-2.2:
	mkdir -p bin/capitulo_2/2.2/
	gcc -c -o bin/capitulo_2/2.2/getopt_long.o src/capitulo_2/2.2/getopt_long.c
	gcc	-o bin/capitulo_2/2.2/getopt_long bin/capitulo_2/2.2/getopt_long.o
clean-2.2:
	rm -rf bin/capitulo_2/2.2/

#2.3
listing-2.3:
	mkdir -p bin/capitulo_2/2.3/
	gcc -c -o bin/capitulo_2/2.3/print-env.o src/capitulo_2/2.3/print-env.c
	gcc -o bin/capitulo_2/2.3/print-env bin/capitulo_2/2.3/print-env.o
clean-2.3:
	rm -rf bin/capitulo_2/2.3/

#2.4
listing-2.4:
	mkdir -p bin/capitulo_2/2.4/
	gcc -c -o bin/capitulo_2/2.4/cliente.o src/capitulo_2/2.4/cliente.c
	gcc -o bin/capitulo_2/2.4/cliente bin/capitulo_2/2.4/cliente.o
clean-2.4:
	rm -rf bin/capitulo_2/2.4/

#2.5
listing-2.5:
	mkdir -p bin/capitulo_2/2.5/
	gcc -c -o bin/capitulo_2/2.5/temp_file.o src/capitulo_2/2.5/temp_file.c
	gcc -o bin/capitulo_2/2.5/temp_file bin/capitulo_2/2.5/temp_file.o
clean-2.5:
	rm -rf bin/capitulo_2/2.5/

#2.6
listing-2.6:
	mkdir -p bin/capitulo_2/2.6/
	gcc -c -o bin/capitulo_2/2.6/readfile.o src/capitulo_2/2.6/readfile.c
	gcc -o bin/capitulo_2/2.6/readfile bin/capitulo_2/2.6/readfile.o
clean-2.6:
	rm -rf bin/capitulo_2/2.6/

#2.7
listing-2.7:
	mkdir -p bin/capitulo_2/2.7/
	gcc -c -o bin/capitulo_2/2.7/test.o src/capitulo_2/2.7/test.c
	gcc -o bin/capitulo_2/2.7/test bin/capitulo_2/2.7/test.o
clean-2.7:
	rm -rf bin/capitulo_2/2.7/

#2.8	
listing-2.8:
	mkdir -p bin/capitulo_2/2.8/
	gcc -c -o bin/capitulo_2/2.8/app.o src/capitulo_2/2.8/app.c
	gcc -o bin/capitulo_2/2.8/app bin/capitulo_2/2.8/app.o
clean-2.8:
	rm -rf bin/capitulo_2/2.8/

#2.9
listing-2.9: libtiff 
	mkdir -p bin/capitulo_2/2.9/
	gcc -o bin/capitulo_2/2.9/tifftest src/capitulo_2/2.9/tifftest.c -ltiff
libtiff: 
	sudo apt-get install libtiff-dev
clean-2.9:
	rm -rf bin/capitulo_2/2.9/

#3.1
listing-3.1:
	mkdir -p bin/capitulo_3/3.1/
	gcc -c -o bin/capitulo_3/3.1/print-pid.o src/capitulo_3/3.1/print-pid.c
	gcc -o bin/capitulo_3/3.1/print-pid bin/capitulo_3/3.1/print-pid.o
clean-3.1:
	rm -rf bin/capitulo_3/3.1/

#3.2
listing-3.2:
	mkdir -p bin/capitulo_3/3.2/
	gcc -c -o bin/capitulo_3/3.2/system.o src/capitulo_3/3.2/system.c
	gcc -o bin/capitulo_3/3.2/system bin/capitulo_3/3.2/system.o
clean-3.2:
	rm -rf bin/capitulo_3/3.2/

#3.3
listing-3.3:
	mkdir -p bin/capitulo_3/3.3/
	gcc -c -o bin/capitulo_3/3.3/fork.o src/capitulo_3/3.3/fork.c
	gcc -o bin/capitulo_3/3.3/fork bin/capitulo_3/3.3/fork.o
clean-3.3:
	rm -rf bin/capitulo_3/3.3/

#3.4
listing-3.4:
	mkdir -p bin/capitulo_3/3.4/
	gcc -c -o bin/capitulo_3/3.4/fork-exec.o src/capitulo_3/3.4/fork-exec.c
	gcc -o bin/capitulo_3/3.4/fork-exec bin/capitulo_3/3.4/fork-exec.o
clean-3.4:
	rm -rf bin/capitulo_3/3.4/

#3.5
listing-3.5:
	mkdir -p bin/capitulo_3/3.5/
	gcc -c -o bin/capitulo_3/3.5/sigusr1.o src/capitulo_3/3.5/sigusr1.c	
	gcc -o bin/capitulo_3/3.5/sigusr1 bin/capitulo_3/3.5/sigusr1.o
clean-3.5:
	rm -rf bin/capitulo_3/3.5/

#3.6
listing-3.6:
	mkdir -p bin/capitulo_3/3.6/
	gcc -c -o bin/capitulo_3/3.6/zombie.o src/capitulo_3/3.6/zombie.c
	gcc -o bin/capitulo_3/3.6/zombie bin/capitulo_3/3.6/zombie.o
clean-3.6:
	rm -rf bin/capitulo_3/3.6/

#3.7
listing-3.7:
	mkdir -p bin/capitulo_3/3.7/
	gcc -c -o bin/capitulo_3/3.7/sigchld.o src/capitulo_3/3.7/sigchld.c
	gcc -o bin/capitulo_3/3.7/sigchld bin/capitulo_3/3.7/sigchld.o
clean-3.7:
	rm -rf bin/capitulo_3/3.7/

#5.1
listing-5.1:
	mkdir -p bin/capitulo_5/5.1/
	gcc -c -o bin/capitulo_5/5.1/shm.o src/capitulo_5/5.1/shm.c 
clean-5.1:
	rm -rf bin/capitulo_5/5.1/

#5.2
listing-5.2:
	mkdir -p bin/capitulo_5/5.2/
	gcc -c -o bin/capitulo_5/5.2/sem_all_deall.o src/capitulo_5/5.2/sem_all_deall.c 
clean-5.2:
	rm -rf bin/capitulo_5/5.2/

#5.3
listing-5.3:
	mkdir -p bin/capitulo_5/5.3/
	gcc -c -o bin/capitulo_5/5.3/sem_init.o src/capitulo_5/5.3/sem_init.c 
clean-5.3:
	rm -rf bin/capitulo_5/5.3/

#5.4
listing-5.4:
	mkdir -p bin/capitulo_5/5.4/
	gcc -c -o bin/capitulo_5/5.4/sem_pv.o src/capitulo_5/5.4/sem_pv.c 
clean-5.4:
	rm -rf bin/capitulo_5/5.4/

#5.5
listing-5.5:
	mkdir -p bin/capitulo_5/5.5/
	gcc -c -o bin/capitulo_5/5.5/mmap-write.o src/capitulo_5/5.5/mmap-write.c 
clean-5.5:
	rm -rf bin/capitulo_5/5.5/

#5.6
listing-5.6:
	mkdir -p bin/capitulo_5/5.6/
	gcc -c -o bin/capitulo_5/5.6/mmap-read.o src/capitulo_5/5.6/mmap-read.c 
clean-5.6:
	rm -rf bin/capitulo_5/5.5/

#5.7
listing-5.7:
	mkdir -p bin/capitulo_5/5.7/
	gcc -c -o bin/capitulo_5/5.7/pipe.o src/capitulo_5/5.7/pipe.c 
clean-5.7:
	rm -rf bin/capitulo_5/5.7/

#5.8
listing-5.8:
	mkdir -p bin/capitulo_5/5.8/
	gcc -c -o bin/capitulo_5/5.8/dup2.o src/capitulo_5/5.8/dup2.c 
clean-5.8:
	rm -rf bin/capitulo_5/5.8/

#5.9
listing-5.9:
	mkdir -p bin/capitulo_5/5.9/
	gcc -c -o bin/capitulo_5/5.9/popen.o src/capitulo_5/5.9/popen.c 
clean-5.9:
	rm -rf bin/capitulo_5/5.9/

#5.10
listing-5.10:
	mkdir -p bin/capitulo_5/5.10/
	gcc -c -o bin/capitulo_5/5.10/socket-server.o src/capitulo_5/5.10/socket-server.c 
clean-5.10:
	rm -rf bin/capitulo_5/5.10/

#5.11
listing-5.11:
	mkdir -p bin/capitulo_5/5.11/
	gcc -c -o bin/capitulo_5/5.11/socket-client.o src/capitulo_5/5.11/socket-client.c 
clean-5.11:
	rm -rf bin/capitulo_5/5.11/

#5.12
listing-5.12:
	mkdir -p bin/capitulo_5/5.12/
	gcc -c -o bin/capitulo_5/5.12/socket-inet.o src/capitulo_5/5.12/socket-inet.c 
clean-5.12:
	rm -rf bin/capitulo_5/5.12/	

#limpiar
clean: 
	clean-1.1 clean-1.2 clean-1.3 
	clean-2.1 clean-2.2 clean-2.3 clean-2.4 clean-2.5 clean-2.6 clean-2.7 clean-2.8 clean-2.9 
	clean-3.1 clean-3.2 clean-3.3 clean-3.4 clean-3.5 clean-3.6 clean-3.7 
	clean-5.1 clean-5.2 clean-5.3 clean-5.4 clean-5.5 clean-5.6 clean-5.7 clean-5.8 clean-5.9 clean-5.10 clean-5.11 clean-5.12 
