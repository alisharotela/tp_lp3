#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/types.h>

/* We must define union semun ourselves.*/
union semun {
	
	int val;
	struct semid_ds *buf;
	unsigned short int *array;
	struct seminfo *__buf;
};

/* Obtain a binary semaphore’s ID, allocating if necessary.*/
int binary_semaphore_allocation (key_t key, int sem_flags) {

	return semget (key, 1, sem_flags);
}

/* Deallocate a binary semaphore. All users must have finished their
use. Returns -1 on failure. */
int binary_semaphore_deallocate (int semid) {

	union semun ignored_argument;
	return semctl (semid, 1, IPC_RMID, ignored_argument);
}

 int main(int argc, char const *argv[]) {
/*
	key_t Clave;
	//
	// Igual que en cualquier recurso compartido (memoria compartida, semaforos
	// o colas) se obtien una clave a partir de un fichero existente cualquiera
	// y de un entero cualquiera. Todos los procesos que quieran compartir este
	// semaforo, deben usar el mismo fichero y el mismo entero.
	//             
	Clave = ftok ("/bin/ls", 33);
	if (Clave == (key_t)-1)
	{
		cout << "No puedo conseguir clave de semáforo" << endl;
		exit(0);
	}

	//
	// Se obtiene un array de semaforos (10 en este caso, aunque solo se usara
	// uno.
	// El IPC_CREAT indica que lo  cree si no lo está ya
	// el 0600 con permisos de lectura y escritura para el usuario que lance
	// los procesos. Es importante el 0 delante para que se interprete en
	// octal.
	//               */
	int semid = binary_semaphore_allocation (1,1);	
	binary_semaphore_deallocate(semid);
	return 0;
}