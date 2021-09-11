#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/sem.h>

/* We must define union semun ourselves. */
union semun {
	int val;
	struct semid_ds *buf;
	unsigned short int *array;
	struct seminfo *__buf;
};

/* Initialize a binary semaphore with a value of 1.*/
int binary_semaphore_initialize (int semid) {
	union semun argument;
	unsigned short values[1];
	values[0] = 1;
	argument.array = values;
	return semctl (semid, 0, SETALL, argument);
}

int main(int argc, char const *argv[]){
	binary_semaphore_initialize(1);

	return 0;
}