#ifndef SCH8051_H
#define SCH8051_H

// HEADER FILES WITH REGISTERS DEFINITIONS AND OTHER IMPORTANT INFORMATIONS. 
#include "ADuC847.h"

/*-----------------------------------------------------------------------------
								SYSTEM MACROS

-> GROUP OF GENERAL MACROS WITH INFORMATIONS ABOUT THE SYSTEM AND ITS TASKS. 
-> !BE CAREFUL, BY CHANGING THIS MACROS YOU MAY AFFECT THE WHOLE 
	SCHEDULER BEHAVIOUR, SO DONT CHANGE THE MACROS UNLESS YOU REALLY 
	KNOW WHERE THOSE CHANGES WILL LEAD YOU!
-------------------------------------------------------------------------------
*/

#define SCH_MAX_TASKS 	10
#define SCH_STACK_SIZE 	50
#define SCH_STACK_INIT 	0x45    // CONFIGURE YOUR COMPILER TO START STACK HERE,
                                // OR CHANGE THIS MACRO ACCORDING TO YOUR .MEM FILE
#define SCH_TIMEOUT 	15
#define SCH_MAX_PRIO 	3

#define READY 	0
#define WAIT	1 
#define BLOCKED 2
#define FREE	3

#define MUTEX_LOCKED	0
#define MUTEX_RELEASED	1

/*-----------------------------------------------------------------------------
								SYSTEM VARIABLES

-> PCB, SYNC STRUCTURES, SYSTEM CONTROL VARIABLES, ETC... 
-> IF YOU WANT TO MESS WITH SOMETHING HERE YOU'LL NEED TO CHANGE THE SYSTEM 
   MEMORY MAP THAT I DID. ITS NOT REALLY A HARD WORK, BUT THINGS CAN GO REALLY
   BAD IF YOU DONT PAY ATENTION TO THE MEMORY ADRESSES AND I WONT HELP ANYONE 
   THAT CHANGES THE SYSTEM TO SPECIFIC APPLICATIONS. 
-------------------------------------------------------------------------------
*/

typedef unsigned char Byte; 
typedef unsigned int Word; 
typedef unsigned long Lword; 
typedef void fptr(void *data) __reentrant; 

// THE BEST WAY OF IMPLEMENTING A MUTEX, BUT YOU WILL NEED TO DO THE LOCK 
// SYSTEM ALL BY YOURSELF WITH AN IF STATEMENT 
typedef volatile __bit sch_mutex; 

// SCHEDULER STRUCTURE: 
// 52 bytes.  
struct sch_data{
 	Byte stack_save[SCH_STACK_SIZE]; 
	Byte sp; 
	Byte state;  
}; 

// MUTEX STRUCT: 
// 11 Bytes; 
struct sch_mutex_sync{
	Byte lock; 
	Byte waiting_list[SCH_MAX_TASKS]; 
};

// SEMAPHORE STRUCT: 
// 12 Bytes; 
struct sch_semaphore_sync{
	Byte lock; 
	Byte waiting_list[SCH_MAX_TASKS]; 
	Byte share;  
};

/*-----------------------------------------------------------------------------
								SYSTEM FUNCTIONS

-> INTERNAL SO FUNCTIONS AND MACROS, THE USER MUST NOT EVEN KNOW THAT THEY 
   EXIST!
-> THERES A LOT OF SPACE FOR OPTMIZATIONS HERE, SO FEEL COMFORTABLE TO CHANGE 
   THESE FUNCTIONS IF YOU REALLY KNOW WHAT YOU ARE DOING. BUT DONT TOUCH A 
   THING IF YOU DONT HAVE ANY IDEA OF WHAT IS HAPPENING HERE OR THINGS WILL 
   GO WRONG!
-------------------------------------------------------------------------------
*/

void sch_schedule(); 
void sch_dispatch() __interrupt(5); 
void sch_init(); 
void sch_add_task(fptr*); 
void sch_start();
void sch_next(); 
void sch_mutex_start(struct sch_mutex_sync*, Byte); 
void sch_mutex_lock(struct sch_mutex_sync*);
Byte sch_mutex_trylock(struct sch_mutex_sync*) __critical __reentrant;
Byte sch_mutex_release(struct sch_mutex_sync*) __reentrant;
void sch_semaphore_start(struct sch_semaphore_sync*, Byte);
Byte sch_semaphore_tryget(struct sch_semaphore_sync*) __critical __reentrant;
void sch_semaphore_get(struct sch_semaphore_sync*);
Byte sch_semaphore_put(struct sch_semaphore_sync*) __critical __reentrant;

#endif