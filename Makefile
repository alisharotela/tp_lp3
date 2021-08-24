#todos 
all: listing-1.1 listing-1.2 listing-1.3 listing-2.1 listing-2.2 listing-2.3 listing-2.4 listing-2.5

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


#limpiar
clean: clean-1.1 clean-1.2 clean-1.3 clean-2.1 clean-2.2 clean-2.3 clean-2.4 clean-2.5

