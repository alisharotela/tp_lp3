# tp_lp3

### ejemplo


#2.1
listing-2.1:
    # Este es para crear la carpeta
	mkdir -p bin/capitulo_2/2.1/
	# Este es para generar el objeto.o
	gcc -c -o bin/capitulo_2/2.1/arglist.o src/capitulo_2/2.1/arglist.c
	# Este es para generar el ejecutable
	gcc -o bin/capitulo_2/2.1/arglist bin/capitulo_2/2.1/arglist.o
clean-2.1:
	rm -f bin/capitulo_2/2.1/arglist.o
