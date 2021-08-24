
#1.1
listing-1.1: listing-1.2 listing-1.3
	g++ -o bin/capitulo_1/1.1/reciprocal bin/capitulo_1/1.1/main.o bin/capitulo_1/1.2/reciprocal.o

clean-1.1:
	rm -f bin/capitulo_1/1.1/reciprocal
#1.2
listing-1.2: src/capitulo_1/1.1/main.c 
	gcc -c  src/capitulo_1/1.1/main.c -I src/capitulo_1/1.3/ -o bin/capitulo_1/1.1/main.o
clean-1.2:
	rm -f bin/capitulo_1/1.1/main.o
#1.3
listing-1.3: 
	g++ -c src/capitulo_1/1.2/reciprocal.cpp -I src/capitulo_1/1.3/ -o bin/capitulo_1/1.2/reciprocal.o
clean-1.3:
	rm -f bin/capitulo_1/1.2/reciprocal.o

#todos 
all: listing-1.1 listing-1.2 listing-1.3

#limpiar
clean: clean-1.1 clean-1.2 clean-1.3
