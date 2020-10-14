#include "sch8051.h"

// TASKS LIST, USED TO STORE INFORMATION ABOUT THE TASKS THAT ARE RUNNING.
__xdata __at(0x00) volatile struct sch_data sch_tasks[SCH_MAX_TASKS];  

// BUFFER WITH NUMBER OF TICKS. USED FOR PREEMPTION. 
__xdata __at(0x208) volatile Word sch_time; 

// INDEX OF THE COURRENT TASK RUNNING. 
__xdata __at(0x210) volatile Byte sch_index; 

// NUMBER OF TASKS AVAILABLE. 
__xdata __at(0x211) Byte sch_num_tasks; 

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

// MACROS USED DURING THE CONTEXT SWITCH PROCESS: 
//****************************************************************************
#define TO_XRAM { \
	__data Byte * __data ram = (Byte __data *)SCH_STACK_INIT; \
	__xdata Byte *__data xram = &(sch_tasks[sch_index].stack_save[0]);	\
	sch_tasks[sch_index].sp = SP - SCH_STACK_INIT; \
	while((Byte)ram <= SP) *(xram++) = *(ram++); }
		
#define TO_STACK { \
	__data Byte * __data ram = (Byte __data *)SCH_STACK_INIT; \
	__xdata Byte *__data xram = &(sch_tasks[sch_index].stack_save[0]);	\
	SP = SCH_STACK_INIT + sch_tasks[sch_index].sp; \
	while((Byte)ram <= SP) *(ram++) = *(xram++); }

#define POP_BANK		\
		__asm 			\
			pop	psw		\
			pop	0		\
			pop	1		\
			pop	2		\
			pop	3		\
			pop	4		\
			pop	5		\
			pop	6		\
			pop	7		\
			pop	dph		\
			pop	dpl		\
			pop	b		\
			pop	acc		\
			pop bits	\
		__endasm;

#define PUSH_BANK		\
		__asm			\
			push bits	\
			push acc	\
			push b		\
			push dpl	\
			push dph	\
			push 7		\
			push 6		\
			push 5		\
			push 4		\
			push 3		\
			push 2		\
			push 1		\
			push 0		\
			push psw	\
		__endasm;
//****************************************************************************

// ROUND ROBIN SCHEDULER, A PRIORITY BASED SCHEDULER IS ON THE WORKS! :D 
#pragma save
#pragma nooverlay
void sch_schedule(){
	Byte i; 
	
	i = (sch_index + 1)%sch_num_tasks; 

	while(i != sch_index){
		if(sch_tasks[i].state == WAIT){
			break; 
		}
		i = (i + 1)%sch_num_tasks; 
	}

	sch_tasks[sch_index].state = WAIT; 
	sch_tasks[i].state = READY; 
	sch_index = i; 
}
#pragma restore

/*
-> TIMER 2 INTERRUPT USED FOR SCHEDULING, YOU MAY WANT TO USE THIS INTERRUPT 
FOR QUICK AND SPECIFIC SYSTEM VERIFICATIONS DEPENDING ON YOUR APPLICATION 
BUT I REALLY RECOMEND TO DO EVERYTHING WITHOUT CHANGING THE OS INTERNAL 
FUNCTIONS. SO ITS PROBABLY BETTER FOR YOU TO CREATE A TASK FOR SPECIFIC 
SYSTEM VERIFICATIONS! 

-> ALSO REMEMBER THAT ITS NEVER A GOOD THING TO HAVE A LOT OF INTERRUPTIONS
   IN AN APPLICATION. IN THIS CASE, OTHER INTERRUPT SOURCES MAY AFFECT THE 
   SYSTEM BEHAVIOUR. 
*/ 

void sch_dispatch() __interrupt(5){
	EA = 0; 
	TF2 = 0; 
	sch_time--;
	if(sch_time == 0){
		sch_time = SCH_TIMEOUT; 
		TO_XRAM 
		sch_schedule(); 
		TO_STACK
	}
	EA = 1;
}

/*-----------------------------------------------------------------------------
						USER INTERFACE FUNCTIONS

-> FUNCTIONS AND MACROS USED BY THE USER TO ACESS THE OS FEATURES. 
-------------------------------------------------------------------------------
*/

// INITIALIZING THE TASKS VECTOR AND SYSTEM VARIABLES: 
void sch_init(){
	Byte i = 0; 
	sch_index = 0;
	sch_num_tasks = 0; 
	sch_time = SCH_TIMEOUT;  
	for(i = 0; i < SCH_MAX_TASKS; i++){
		sch_tasks[i].sp = 0; 
		sch_tasks[i].state = FREE; 
	}
}

// FUNCTION TO ADD A TASK: 
void sch_add_task(fptr *f){
	Byte i = 0; 
	for(i = 0; i < SCH_MAX_TASKS; i++){
		if(sch_tasks[i].state == FREE){
			break; 
		}
	}

	if(sch_tasks[i].state != FREE){
		return; 
	}

	sch_tasks[i].stack_save[0] = ((unsigned short)f) & 0xff; 
	sch_tasks[i].stack_save[1] = ((unsigned short)f >> 8) & 0xff;
	sch_tasks[i].stack_save[2] = 0; 	//BITS
	sch_tasks[i].stack_save[3] = ACC; 
	sch_tasks[i].stack_save[4] = B; 
	sch_tasks[i].stack_save[5] = DPL; 
	sch_tasks[i].stack_save[6] = DPH; 

	Byte j = 0; 

	// r0 - r7 
	for(j = 7; j < 15; j++){
		sch_tasks[i].stack_save[j] = 0; 
	}

	sch_tasks[i].stack_save[15] = PSW; 
	
	sch_tasks[i].state = WAIT;  
	sch_tasks[i].sp = 15; 
	sch_num_tasks++; 
}

// FUNCTION TO START THE SCHEDULER: 
void sch_start(){
	EA = 0; 

	// timer 2 initialization: 
	T2CON = 0; 
	RCAP2H = 0xCE;
	RCAP2L = 0xD9; 
	TH2 = 0xCE; 
	TL2 = 0xD9;
	ET2 = 1; 
	TR2 = 1;  

	// scheduling the first task:  
	sch_schedule();
	TO_STACK
	POP_BANK  
	EA = 1;
}

// EXITS THE CURRENT TASK AND PICKS UP THE NEXT TASK TO RUN: 
void sch_next(){
	EA = 0; 
	PUSH_BANK
	TO_XRAM
	sch_schedule();
	TO_STACK
	POP_BANK
	EA = 1; 
}

/* MUTEX FUNCTIONS 
-> The user must use sync mechanisms ONLY through
   these functions! 
*/ 
//**********************************************************************************
void sch_mutex_start(struct sch_mutex_sync *mut, Byte state){
	Byte i; 
	// Mutex starting released. 
	mut->lock = MUTEX_LOCKED; 
	if(state == MUTEX_LOCKED || state == MUTEX_RELEASED){
		mut->lock = state; 
	}
	for(i = 0; i < SCH_MAX_TASKS; i++){
		mut->waiting_list[i] = 0; 
	}
}

Byte sch_mutex_lock(struct sch_mutex_sync *mut) __critical{
	if(mut->lock == MUTEX_RELEASED){
		mut->lock = MUTEX_LOCKED; 
		return 1; 
	}else{
		sch_tasks[sch_index].state = BLOCKED;
		mut->waiting_list[sch_index] = 1; 
		sch_next(); 
		return 0; 
	}
}

Byte sch_mutex_trylock(struct sch_mutex_sync *mut) __critical{
	if(mut->lock == MUTEX_RELEASED){
		mut->lock = MUTEX_LOCKED; 
		return 1; 
	}else{
		return 0; 
	}
}

Byte sch_mutex_release(struct sch_mutex_sync *mut) __critical{
	Byte i; 
	if(mut->lock == MUTEX_RELEASED){
		return 0; 
	}else{
		mut->lock = MUTEX_RELEASED; 
		for(i = 0; i < sch_num_tasks; i++){
			if(mut->waiting_list[i] == 1){
				sch_tasks[i].state = WAIT;
				mut->waiting_list[i] = 0;  
			}
		}
		return 1; 
	}
}

void sch_semaphore_start(struct sch_semaphore_sync *sem, Byte size){
	sem->lock = size; 
	sem->share = size; 
	Byte i; 
	for(i = 0; i < SCH_MAX_TASKS; i++){
		sem->waiting_list[i] = 0; 
	}
}

Byte sch_semaphore_tryget(struct sch_semaphore_sync *sem) __critical{
	if(sem->lock > 0){
		sem->lock--; 
		return 1; 
	}else{
		return 0; 
	}
}

Byte sch_semaphore_get(struct sch_semaphore_sync *sem) __critical{
	if(sem->lock > 0){
		sem->lock--; 
		return 1; 
	}else{
		sch_tasks[sch_index].state = BLOCKED; 
		sem->waiting_list[sch_index] = 1; 
		sch_next(); 
		return 0; 
	}
}

Byte sch_semaphore_put(struct sch_semaphore_sync *sem) __critical{
	Byte i; 
	if(sem->lock < sem->share){
		sem->lock++;
		for(i = 0; i < sch_num_tasks; i++){
			if(sem->waiting_list[i] == 1){
				sem->waiting_list[i] = 0; 
				sch_tasks[i].state = WAIT; 	
			}
		} 
		return 1; 
	}else{
		return 0; 
	}
}
//*********************************************************************************