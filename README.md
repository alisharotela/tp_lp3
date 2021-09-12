# Tp_lp3

### Ejemplo


### Para el listing 2.1
	listing-2.1
### Para crear la carpeta
	mkdir -p bin/capitulo_2/2.1/

### Para generar el objeto.o
	gcc -c -o bin/capitulo_2/2.1/arglist.o src/capitulo_2/2.1/arglist.c
### Para generar el ejecutable
	gcc -o bin/capitulo_2/2.1/arglist bin/capitulo_2/2.1/arglist.o
### Para eliminar un objeto
	clean-2.1:
		rm -f bin/capitulo_2/2.1/arglist.o
