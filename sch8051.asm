;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module sch8051
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sch_mutex_start_PARM_2
	.globl _SPR0
	.globl _SPR1
	.globl _CPHA
	.globl _CPOL
	.globl _SPIM
	.globl _SPE
	.globl _WCOL
	.globl _ISPI
	.globl _D0EN
	.globl _D0
	.globl _D1EN
	.globl _D1
	.globl _I2CI
	.globl _I2CTX
	.globl _I2CRS
	.globl _I2CM
	.globl _MDI
	.globl _MCO
	.globl _MDE
	.globl _MDO
	.globl _ERR1
	.globl _ERR0
	.globl _NOXREF
	.globl _CAL
	.globl _RDY1
	.globl _RDY0
	.globl _WDWR
	.globl _WDE
	.globl _WDS
	.globl _WDIR
	.globl _PRE0
	.globl _PRE1
	.globl _PRE2
	.globl _PRE3
	.globl _CAP2
	.globl _CNT2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK
	.globl _RCLK
	.globl _EXF2
	.globl _TF2
	.globl _T2
	.globl _T2EX
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _PT2
	.globl _PADC
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _ET2
	.globl _EADC
	.globl _EA
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _CFG847
	.globl _EWAIT
	.globl _SPICON
	.globl _SPIDAT
	.globl _I2CADD1
	.globl _B
	.globl _GN0H
	.globl _GN0M
	.globl _GN0L
	.globl _DCON
	.globl _I2CCON
	.globl _ADC0CON2
	.globl _OF0H
	.globl _OF0M
	.globl _OF0L
	.globl _ACC
	.globl _PSMCON
	.globl _ADC0H
	.globl _ADC0M
	.globl _ADC0L
	.globl _ADCSTAT
	.globl _PLLCON
	.globl _ICON
	.globl _SF
	.globl _ADC0CON1
	.globl _ADCMODE
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _EADRH
	.globl _EADRL
	.globl _CHIPID
	.globl _WDCON
	.globl _EDATA4
	.globl _EDATA3
	.globl _EDATA2
	.globl _EDATA1
	.globl _ECON
	.globl _IP
	.globl _SPH
	.globl _PWM1H
	.globl _PWM1L
	.globl _PWMOH
	.globl _PWM0L
	.globl _P3
	.globl _CFG848
	.globl _PWMCON
	.globl _IEIP2
	.globl _IE
	.globl _DPCON
	.globl _INTVAL
	.globl _HOUR
	.globl _MIN
	.globl _SEC
	.globl _HTSEC
	.globl _TIMECON
	.globl _P2
	.globl _T3CON
	.globl _T3FD
	.globl _I2CADD
	.globl _I2CDAT
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPP
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _sch_num_tasks
	.globl _sch_index
	.globl _sch_time
	.globl _sch_tasks
	.globl _sch_semaphore_start_PARM_2
	.globl _sch_schedule
	.globl _sch_dispatch
	.globl _sch_init
	.globl _sch_add_task
	.globl _sch_start
	.globl _sch_next
	.globl _sch_mutex_start
	.globl _sch_mutex_lock
	.globl _sch_mutex_trylock
	.globl _sch_mutex_release
	.globl _sch_semaphore_start
	.globl _sch_semaphore_tryget
	.globl _sch_semaphore_get
	.globl _sch_semaphore_put
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPP	=	0x0084
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_I2CDAT	=	0x009a
_I2CADD	=	0x009b
_T3FD	=	0x009d
_T3CON	=	0x009e
_P2	=	0x00a0
_TIMECON	=	0x00a1
_HTSEC	=	0x00a2
_SEC	=	0x00a3
_MIN	=	0x00a4
_HOUR	=	0x00a5
_INTVAL	=	0x00a6
_DPCON	=	0x00a7
_IE	=	0x00a8
_IEIP2	=	0x00a9
_PWMCON	=	0x00ae
_CFG848	=	0x00af
_P3	=	0x00b0
_PWM0L	=	0x00b1
_PWMOH	=	0x00b2
_PWM1L	=	0x00b3
_PWM1H	=	0x00b4
_SPH	=	0x00b7
_IP	=	0x00b8
_ECON	=	0x00b9
_EDATA1	=	0x00bc
_EDATA2	=	0x00bd
_EDATA3	=	0x00be
_EDATA4	=	0x00bf
_WDCON	=	0x00c0
_CHIPID	=	0x00c2
_EADRL	=	0x00c6
_EADRH	=	0x00c7
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ADCMODE	=	0x00d1
_ADC0CON1	=	0x00d2
_SF	=	0x00d4
_ICON	=	0x00d5
_PLLCON	=	0x00d7
_ADCSTAT	=	0x00d8
_ADC0L	=	0x00d9
_ADC0M	=	0x00da
_ADC0H	=	0x00db
_PSMCON	=	0x00df
_ACC	=	0x00e0
_OF0L	=	0x00e1
_OF0M	=	0x00e2
_OF0H	=	0x00e3
_ADC0CON2	=	0x00e6
_I2CCON	=	0x00e8
_DCON	=	0x00e8
_GN0L	=	0x00e9
_GN0M	=	0x00ea
_GN0H	=	0x00eb
_B	=	0x00f0
_I2CADD1	=	0x00f2
_SPIDAT	=	0x00f7
_SPICON	=	0x00f8
_EWAIT	=	0x009f
_CFG847	=	0x00af
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_EA	=	0x00af
_EADC	=	0x00ae
_ET2	=	0x00ad
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PADC	=	0x00be
_PT2	=	0x00bd
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
_T2EX	=	0x0091
_T2	=	0x0090
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK	=	0x00cd
_TCLK	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_CNT2	=	0x00c9
_CAP2	=	0x00c8
_PRE3	=	0x00c7
_PRE2	=	0x00c6
_PRE1	=	0x00c5
_PRE0	=	0x00c4
_WDIR	=	0x00c3
_WDS	=	0x00c2
_WDE	=	0x00c1
_WDWR	=	0x00c0
_RDY0	=	0x00df
_RDY1	=	0x00de
_CAL	=	0x00dd
_NOXREF	=	0x00dc
_ERR0	=	0x00db
_ERR1	=	0x00da
_MDO	=	0x00ef
_MDE	=	0x00ee
_MCO	=	0x00ed
_MDI	=	0x00ec
_I2CM	=	0x00eb
_I2CRS	=	0x00ea
_I2CTX	=	0x00e9
_I2CI	=	0x00e8
_D1	=	0x00ef
_D1EN	=	0x00ee
_D0	=	0x00ed
_D0EN	=	0x00eb
_ISPI	=	0x00ff
_WCOL	=	0x00fe
_SPE	=	0x00fd
_SPIM	=	0x00fc
_CPOL	=	0x00fb
_CPHA	=	0x00fa
_SPR1	=	0x00f9
_SPR0	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_sch_mutex_lock_mut_65536_40:
	.ds 3
_sch_semaphore_start_PARM_2:
	.ds 1
_sch_semaphore_get_sem_65536_66:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_sch_mutex_start_PARM_2:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_sch_tasks	=	0x0000
_sch_time	=	0x0208
_sch_index	=	0x0210
_sch_num_tasks	=	0x0211
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_schedule'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	sch8051.c:81: void sch_schedule(){
;	-----------------------------------------
;	 function sch_schedule
;	-----------------------------------------
_sch_schedule:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	sch8051.c:84: i = (sch_index + 1)%sch_num_tasks; 
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	inc	r7
	cjne	r7,#0x00,00120$
	inc	r6
00120$:
	mov	dptr,#_sch_num_tasks
	movx	a,@dptr
	mov	r5,a
	mov	__modsint_PARM_2,r5
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r7
	mov	dph,r6
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
;	sch8051.c:86: while(i != sch_index){
00103$:
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	r7,a
	mov	a,r6
	cjne	a,ar7,00121$
	sjmp	00105$
00121$:
;	sch8051.c:87: if(sch_tasks[i].state == WAIT){
	mov	a,r6
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r5,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r7,a
	mov	a,#0x33
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00122$
	sjmp	00105$
00122$:
;	sch8051.c:90: i = (i + 1)%sch_num_tasks; 
	mov	ar5,r6
	mov	r7,#0x00
	inc	r5
	cjne	r5,#0x00,00123$
	inc	r7
00123$:
	mov	dptr,#_sch_num_tasks
	movx	a,@dptr
	mov	r4,a
	mov	__modsint_PARM_2,r4
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r5
	mov	dph,r7
	lcall	__modsint
	mov	r5,dpl
	mov	r7,dph
	mov	ar6,r5
	sjmp	00103$
00105$:
;	sch8051.c:93: sch_tasks[sch_index].state = WAIT; 
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r5,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r7,a
	mov	a,#0x33
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	sch8051.c:94: sch_tasks[i].state = READY; 
	mov	a,r6
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r5,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r7,a
	mov	a,#0x33
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	sch8051.c:95: sch_index = i; 
	mov	dptr,#_sch_index
	mov	a,r6
	movx	@dptr,a
;	sch8051.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_dispatch'
;------------------------------------------------------------
;ram                       Allocated to registers r1 
;xram                      Allocated to registers 
;ram                       Allocated to registers r1 
;xram                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	sch8051.c:111: void sch_dispatch() __interrupt(5){
;	-----------------------------------------
;	 function sch_dispatch
;	-----------------------------------------
_sch_dispatch:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	sch8051.c:112: EA = 0; 
;	assignBit
	clr	_EA
;	sch8051.c:113: TF2 = 0; 
;	assignBit
	clr	_TF2
;	sch8051.c:114: sch_time--;
	mov	dptr,#_sch_time
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	dec	r6
	cjne	r6,#0xff,00133$
	dec	r7
00133$:
	mov	dptr,#_sch_time
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	sch8051.c:115: if(sch_time == 0){
	mov	dptr,#_sch_time
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00134$
	ljmp	00108$
00134$:
;	sch8051.c:116: sch_time = SCH_TIMEOUT; 
	mov	dptr,#_sch_time
	mov	a,#0x0f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	sch8051.c:117: TO_XRAM 
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r6,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r7,a
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r4,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r5,a
	mov	a,#0x32
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	a,_SP
	add	a,#0xbb
	mov	r5,a
	movx	@dptr,a
	mov	r1,#0x45
00101$:
	mov	ar5,r1
	clr	c
	mov	a,_SP
	subb	a,r5
	jc	00103$
	mov	ar5,@r1
	inc	r1
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	sjmp	00101$
00103$:
;	sch8051.c:118: sch_schedule(); 
	lcall	_sch_schedule
;	sch8051.c:119: TO_STACK
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r6,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r7,a
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r4,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r5,a
	mov	a,#0x32
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	add	a,#0x45
	mov	_SP,a
	mov	r1,#0x45
00104$:
	mov	ar5,r1
	clr	c
	mov	a,_SP
	subb	a,r5
	jc	00108$
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	@r1,ar5
	inc	r1
	sjmp	00104$
00108$:
;	sch8051.c:121: EA = 1;
;	assignBit
	setb	_EA
;	sch8051.c:122: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_init'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	sch8051.c:132: void sch_init(){
;	-----------------------------------------
;	 function sch_init
;	-----------------------------------------
_sch_init:
;	sch8051.c:134: sch_index = 0;
	mov	dptr,#_sch_index
	clr	a
	movx	@dptr,a
;	sch8051.c:135: sch_num_tasks = 0; 
	mov	dptr,#_sch_num_tasks
	movx	@dptr,a
;	sch8051.c:136: sch_time = SCH_TIMEOUT;  
	mov	dptr,#_sch_time
	mov	a,#0x0f
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	sch8051.c:137: for(i = 0; i < SCH_MAX_TASKS; i++){
	mov	r7,#0x00
00102$:
;	sch8051.c:138: sch_tasks[i].sp = 0; 
	mov	a,r7
	mov	b,#0x34
	mul	ab
	mov	r5,a
	mov	r6,b
	mov	ar3,r5
	mov	a,#(_sch_tasks >> 8)
	add	a,r6
	mov	r4,a
	mov	a,#0x32
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movx	@dptr,a
;	sch8051.c:139: sch_tasks[i].state = FREE; 
	mov	a,#(_sch_tasks >> 8)
	add	a,r6
	mov	r6,a
	mov	a,#0x33
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	a,#0x03
	movx	@dptr,a
;	sch8051.c:137: for(i = 0; i < SCH_MAX_TASKS; i++){
	inc	r7
	cjne	r7,#0x0a,00111$
00111$:
	jc	00102$
;	sch8051.c:141: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_add_task'
;------------------------------------------------------------
;f                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r7 
;------------------------------------------------------------
;	sch8051.c:144: void sch_add_task(fptr *f){
;	-----------------------------------------
;	 function sch_add_task
;	-----------------------------------------
_sch_add_task:
	mov	r6,dpl
	mov	r7,dph
;	sch8051.c:146: for(i = 0; i < SCH_MAX_TASKS; i++){
	mov	r5,#0x00
00107$:
;	sch8051.c:147: if(sch_tasks[i].state == FREE){
	mov	a,r5
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r3,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r4,a
	mov	a,#0x33
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,00135$
	sjmp	00103$
00135$:
;	sch8051.c:146: for(i = 0; i < SCH_MAX_TASKS; i++){
	inc	r5
	cjne	r5,#0x0a,00136$
00136$:
	jc	00107$
00103$:
;	sch8051.c:152: if(sch_tasks[i].state != FREE){
	mov	a,r5
	mov	b,#0x34
	mul	ab
	mov	r4,a
	mov	r5,b
	mov	ar2,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r3,a
	mov	a,#0x33
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x03,00138$
	sjmp	00105$
00138$:
;	sch8051.c:153: return; 
	ret
00105$:
;	sch8051.c:156: sch_tasks[i].stack_save[0] = ((unsigned short)f) & 0xff; 
	mov	dpl,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	dph,a
	mov	ar3,r6
	mov	a,r3
	movx	@dptr,a
;	sch8051.c:157: sch_tasks[i].stack_save[1] = ((unsigned short)f >> 8) & 0xff;
	mov	ar2,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	inc	dptr
	mov	ar6,r7
	mov	a,r6
	movx	@dptr,a
;	sch8051.c:158: sch_tasks[i].stack_save[2] = 0; 	//BITS
	mov	ar6,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	clr	a
	movx	@dptr,a
;	sch8051.c:159: sch_tasks[i].stack_save[3] = ACC; 
	mov	ar6,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,_ACC
	movx	@dptr,a
;	sch8051.c:160: sch_tasks[i].stack_save[4] = B; 
	mov	ar6,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,_B
	movx	@dptr,a
;	sch8051.c:161: sch_tasks[i].stack_save[5] = DPL; 
	mov	ar6,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	inc	dptr
	mov	a,_DPL
	movx	@dptr,a
;	sch8051.c:162: sch_tasks[i].stack_save[6] = DPH; 
	mov	ar6,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r7,a
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,_DPH
	movx	@dptr,a
;	sch8051.c:167: for(j = 7; j < 15; j++){
	mov	r7,#0x07
00109$:
;	sch8051.c:168: sch_tasks[i].stack_save[j] = 0; 
	mov	ar3,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r6,a
	mov	a,r7
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	clr	a
	movx	@dptr,a
;	sch8051.c:167: for(j = 7; j < 15; j++){
	inc	r7
	cjne	r7,#0x0f,00139$
00139$:
	jc	00109$
;	sch8051.c:171: sch_tasks[i].stack_save[15] = PSW; 
	mov	ar6,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r7,a
	mov	a,#0x0f
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,_PSW
	movx	@dptr,a
;	sch8051.c:173: sch_tasks[i].state = WAIT;  
	mov	ar6,r4
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r7,a
	mov	a,#0x33
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	sch8051.c:174: sch_tasks[i].sp = 15; 
	mov	a,#(_sch_tasks >> 8)
	add	a,r5
	mov	r5,a
	mov	a,#0x32
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	a,#0x0f
	movx	@dptr,a
;	sch8051.c:175: sch_num_tasks++; 
	mov	dptr,#_sch_num_tasks
	movx	a,@dptr
	inc	a
	movx	@dptr,a
;	sch8051.c:176: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_start'
;------------------------------------------------------------
;ram                       Allocated to registers r1 
;xram                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	sch8051.c:179: void sch_start(){
;	-----------------------------------------
;	 function sch_start
;	-----------------------------------------
_sch_start:
;	sch8051.c:180: EA = 0; 
;	assignBit
	clr	_EA
;	sch8051.c:183: T2CON = 0; 
	mov	_T2CON,#0x00
;	sch8051.c:184: RCAP2H = 0xCE;
	mov	_RCAP2H,#0xce
;	sch8051.c:185: RCAP2L = 0xD9; 
	mov	_RCAP2L,#0xd9
;	sch8051.c:186: TH2 = 0xCE; 
	mov	_TH2,#0xce
;	sch8051.c:187: TL2 = 0xD9;
	mov	_TL2,#0xd9
;	sch8051.c:188: ET2 = 1; 
;	assignBit
	setb	_ET2
;	sch8051.c:189: TR2 = 1;  
;	assignBit
	setb	_TR2
;	sch8051.c:192: sch_index = 0; 
	mov	dptr,#_sch_index
	clr	a
	movx	@dptr,a
;	sch8051.c:193: sch_tasks[sch_index].state = READY; 
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r6,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r7,a
	mov	a,#0x33
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movx	@dptr,a
;	sch8051.c:194: TO_STACK
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r6,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r7,a
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r4,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r5,a
	mov	a,#0x32
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	add	a,#0x45
	mov	_SP,a
	mov	r1,#0x45
00101$:
	mov	ar5,r1
	clr	c
	mov	a,_SP
	subb	a,r5
	jc	00103$
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	@r1,ar5
	inc	r1
	sjmp	00101$
00103$:
;	sch8051.c:195: POP_BANK  
	pop psw 
	pop 0 
	pop 1 
	pop 2 
	pop 3 
	pop 4 
	pop 5 
	pop 6 
	pop 7 
	pop dph 
	pop dpl 
	pop b 
	pop acc 
	pop bits 
;	sch8051.c:196: EA = 1;
;	assignBit
	setb	_EA
;	sch8051.c:197: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_next'
;------------------------------------------------------------
;ram                       Allocated to registers r1 
;xram                      Allocated to registers 
;ram                       Allocated to registers r1 
;xram                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	sch8051.c:200: void sch_next(){
;	-----------------------------------------
;	 function sch_next
;	-----------------------------------------
_sch_next:
;	sch8051.c:201: EA = 0; 
;	assignBit
	clr	_EA
;	sch8051.c:202: PUSH_BANK
	push bits 
	push acc 
	push b 
	push dpl 
	push dph 
	push 7 
	push 6 
	push 5 
	push 4 
	push 3 
	push 2 
	push 1 
	push 0 
	push psw 
;	sch8051.c:203: TO_XRAM
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r6,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r7,a
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r4,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r5,a
	mov	a,#0x32
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	mov	a,_SP
	add	a,#0xbb
	mov	r5,a
	movx	@dptr,a
	mov	r1,#0x45
00101$:
	mov	ar5,r1
	clr	c
	mov	a,_SP
	subb	a,r5
	jc	00103$
	mov	ar5,@r1
	inc	r1
	mov	dpl,r6
	mov	dph,r7
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	sjmp	00101$
00103$:
;	sch8051.c:204: sch_schedule();
	lcall	_sch_schedule
;	sch8051.c:205: TO_STACK
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r6,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r7,a
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r4,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r5,a
	mov	a,#0x32
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	add	a,#0x45
	mov	_SP,a
	mov	r1,#0x45
00104$:
	mov	ar5,r1
	clr	c
	mov	a,_SP
	subb	a,r5
	jc	00106$
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	@r1,ar5
	inc	r1
	sjmp	00104$
00106$:
;	sch8051.c:206: POP_BANK
	pop psw 
	pop 0 
	pop 1 
	pop 2 
	pop 3 
	pop 4 
	pop 5 
	pop 6 
	pop 7 
	pop dph 
	pop dpl 
	pop b 
	pop acc 
	pop bits 
;	sch8051.c:207: EA = 1; 
;	assignBit
	setb	_EA
;	sch8051.c:208: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_mutex_start'
;------------------------------------------------------------
;state                     Allocated with name '_sch_mutex_start_PARM_2'
;mut                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	sch8051.c:215: void sch_mutex_start(struct sch_mutex_sync *mut, Byte state){
;	-----------------------------------------
;	 function sch_mutex_start
;	-----------------------------------------
_sch_mutex_start:
;	sch8051.c:218: mut->lock = MUTEX_LOCKED; 
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	clr	a
	lcall	__gptrput
;	sch8051.c:219: if(state == MUTEX_LOCKED || state == MUTEX_RELEASED){
	mov	a,_sch_mutex_start_PARM_2
	jz	00101$
	mov	a,#0x01
	cjne	a,_sch_mutex_start_PARM_2,00110$
00101$:
;	sch8051.c:220: mut->lock = state; 
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,_sch_mutex_start_PARM_2
	lcall	__gptrput
;	sch8051.c:222: for(i = 0; i < SCH_MAX_TASKS; i++){
00110$:
	inc	r5
	cjne	r5,#0x00,00121$
	inc	r6
00121$:
	mov	r4,#0x00
00105$:
;	sch8051.c:223: mut->waiting_list[i] = 0; 
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	clr	a
	lcall	__gptrput
;	sch8051.c:222: for(i = 0; i < SCH_MAX_TASKS; i++){
	inc	r4
	cjne	r4,#0x0a,00122$
00122$:
	jc	00105$
;	sch8051.c:225: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_mutex_lock'
;------------------------------------------------------------
;mut                       Allocated with name '_sch_mutex_lock_mut_65536_40'
;------------------------------------------------------------
;	sch8051.c:228: void sch_mutex_lock(struct sch_mutex_sync *mut){
;	-----------------------------------------
;	 function sch_mutex_lock
;	-----------------------------------------
_sch_mutex_lock:
	mov	_sch_mutex_lock_mut_65536_40,dpl
	mov	(_sch_mutex_lock_mut_65536_40 + 1),dph
	mov	(_sch_mutex_lock_mut_65536_40 + 2),b
;	sch8051.c:229: EA = 0; 
;	assignBit
	clr	_EA
;	sch8051.c:230: while(1){
	mov	a,#0x01
	add	a,_sch_mutex_lock_mut_65536_40
	mov	r2,a
	clr	a
	addc	a,(_sch_mutex_lock_mut_65536_40 + 1)
	mov	r3,a
	mov	r4,(_sch_mutex_lock_mut_65536_40 + 2)
00105$:
;	sch8051.c:231: if(mut->lock == MUTEX_RELEASED){
	mov	dpl,_sch_mutex_lock_mut_65536_40
	mov	dph,(_sch_mutex_lock_mut_65536_40 + 1)
	mov	b,(_sch_mutex_lock_mut_65536_40 + 2)
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x01,00102$
;	sch8051.c:232: mut->lock = MUTEX_LOCKED; 
	mov	dpl,_sch_mutex_lock_mut_65536_40
	mov	dph,(_sch_mutex_lock_mut_65536_40 + 1)
	mov	b,(_sch_mutex_lock_mut_65536_40 + 2)
	clr	a
	lcall	__gptrput
;	sch8051.c:233: EA = 1; 
;	assignBit
	setb	_EA
;	sch8051.c:234: break;
	ret
00102$:
;	sch8051.c:236: sch_tasks[sch_index].state = BLOCKED;
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r0,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r1,a
	mov	a,#0x33
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r1
	mov	dph,a
	mov	a,#0x02
	movx	@dptr,a
;	sch8051.c:237: mut->waiting_list[sch_index] = 1; 
	mov	dptr,#_sch_index
	movx	a,@dptr
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	sch8051.c:238: sch_next();  
	push	ar4
	push	ar3
	push	ar2
	lcall	_sch_next
	pop	ar2
	pop	ar3
	pop	ar4
;	sch8051.c:239: EA = 0; 
;	assignBit
	clr	_EA
;	sch8051.c:242: }
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_mutex_trylock'
;------------------------------------------------------------
;mut                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	sch8051.c:244: Byte sch_mutex_trylock(struct sch_mutex_sync *mut) __critical __reentrant{
;	-----------------------------------------
;	 function sch_mutex_trylock
;	-----------------------------------------
_sch_mutex_trylock:
	setb	c
	jbc	ea,00110$
	clr	c
00110$:
	push	psw
;	sch8051.c:245: if(mut->lock == MUTEX_RELEASED){
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,00102$
;	sch8051.c:246: mut->lock = MUTEX_LOCKED; 
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	sch8051.c:247: return 1; 
	mov	dpl,#0x01
	sjmp	00104$
00102$:
;	sch8051.c:249: return 0; 
	mov	dpl,#0x00
00104$:
;	sch8051.c:251: }
	pop	psw
	mov	ea,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_mutex_release'
;------------------------------------------------------------
;mut                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r1 
;------------------------------------------------------------
;	sch8051.c:253: Byte sch_mutex_release(struct sch_mutex_sync *mut)__reentrant{
;	-----------------------------------------
;	 function sch_mutex_release
;	-----------------------------------------
_sch_mutex_release:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	sch8051.c:254: EA = 0; 
;	assignBit
	clr	_EA
;	sch8051.c:256: if(mut->lock == MUTEX_RELEASED){
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,00105$
;	sch8051.c:257: EA = 1; 
;	assignBit
	setb	_EA
;	sch8051.c:258: return 0; 
	mov	dpl,#0x00
	ret
00105$:
;	sch8051.c:260: mut->lock = MUTEX_RELEASED; 
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	sch8051.c:261: for(i = 0; i < sch_num_tasks; i++){
	inc	r5
	cjne	r5,#0x00,00131$
	inc	r6
00131$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	r1,#0x00
00108$:
	mov	dptr,#_sch_num_tasks
	movx	a,@dptr
	mov	r0,a
	clr	c
	mov	a,r1
	subb	a,r0
	jnc	00103$
;	sch8051.c:262: if(mut->waiting_list[i] == 1){
	push	ar5
	push	ar6
	push	ar7
	mov	a,r1
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x01,00133$
	sjmp	00134$
00133$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00109$
00134$:
	pop	ar7
	pop	ar6
	pop	ar5
;	sch8051.c:263: sch_tasks[i].state = WAIT;
	push	ar2
	push	ar3
	push	ar4
	mov	a,r1
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r0,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r4,a
	mov	a,#0x33
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	sch8051.c:264: mut->waiting_list[i] = 0;  
	mov	a,r1
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	sch8051.c:268: return 1; 
	pop	ar4
	pop	ar3
	pop	ar2
;	sch8051.c:264: mut->waiting_list[i] = 0;  
00109$:
;	sch8051.c:261: for(i = 0; i < sch_num_tasks; i++){
	inc	r1
	sjmp	00108$
00103$:
;	sch8051.c:267: EA = 1; 
;	assignBit
	setb	_EA
;	sch8051.c:268: return 1; 
	mov	dpl,#0x01
;	sch8051.c:270: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_semaphore_start'
;------------------------------------------------------------
;size                      Allocated with name '_sch_semaphore_start_PARM_2'
;sem                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r4 
;------------------------------------------------------------
;	sch8051.c:272: void sch_semaphore_start(struct sch_semaphore_sync *sem, Byte size){
;	-----------------------------------------
;	 function sch_semaphore_start
;	-----------------------------------------
_sch_semaphore_start:
;	sch8051.c:273: sem->lock = size; 
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	mov	a,_sch_semaphore_start_PARM_2
	lcall	__gptrput
;	sch8051.c:274: sem->share = size; 
	mov	a,#0x0b
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_sch_semaphore_start_PARM_2
	lcall	__gptrput
;	sch8051.c:276: for(i = 0; i < SCH_MAX_TASKS; i++){
	inc	r5
	cjne	r5,#0x00,00111$
	inc	r6
00111$:
	mov	r4,#0x00
00102$:
;	sch8051.c:277: sem->waiting_list[i] = 0; 
	mov	a,r4
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	clr	a
	lcall	__gptrput
;	sch8051.c:276: for(i = 0; i < SCH_MAX_TASKS; i++){
	inc	r4
	cjne	r4,#0x0a,00112$
00112$:
	jc	00102$
;	sch8051.c:279: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_semaphore_tryget'
;------------------------------------------------------------
;sem                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	sch8051.c:281: Byte sch_semaphore_tryget(struct sch_semaphore_sync *sem) __critical __reentrant{
;	-----------------------------------------
;	 function sch_semaphore_tryget
;	-----------------------------------------
_sch_semaphore_tryget:
	setb	c
	jbc	ea,00110$
	clr	c
00110$:
	push	psw
;	sch8051.c:282: if(sem->lock > 0){
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	jz	00102$
;	sch8051.c:283: sem->lock--; 
	dec	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	sch8051.c:284: return 1; 
	mov	dpl,#0x01
	sjmp	00104$
00102$:
;	sch8051.c:286: return 0; 
	mov	dpl,#0x00
00104$:
;	sch8051.c:288: }
	pop	psw
	mov	ea,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_semaphore_get'
;------------------------------------------------------------
;sem                       Allocated with name '_sch_semaphore_get_sem_65536_66'
;------------------------------------------------------------
;	sch8051.c:291: void sch_semaphore_get(struct sch_semaphore_sync *sem){
;	-----------------------------------------
;	 function sch_semaphore_get
;	-----------------------------------------
_sch_semaphore_get:
	mov	_sch_semaphore_get_sem_65536_66,dpl
	mov	(_sch_semaphore_get_sem_65536_66 + 1),dph
	mov	(_sch_semaphore_get_sem_65536_66 + 2),b
;	sch8051.c:292: EA = 0; 
;	assignBit
	clr	_EA
;	sch8051.c:293: while(1){
	mov	a,#0x01
	add	a,_sch_semaphore_get_sem_65536_66
	mov	r2,a
	clr	a
	addc	a,(_sch_semaphore_get_sem_65536_66 + 1)
	mov	r3,a
	mov	r4,(_sch_semaphore_get_sem_65536_66 + 2)
00105$:
;	sch8051.c:294: if(sem->lock > 0){
	mov	dpl,_sch_semaphore_get_sem_65536_66
	mov	dph,(_sch_semaphore_get_sem_65536_66 + 1)
	mov	b,(_sch_semaphore_get_sem_65536_66 + 2)
	lcall	__gptrget
	mov	r1,a
	jz	00102$
;	sch8051.c:295: sem->lock--; 
	dec	r1
	mov	dpl,_sch_semaphore_get_sem_65536_66
	mov	dph,(_sch_semaphore_get_sem_65536_66 + 1)
	mov	b,(_sch_semaphore_get_sem_65536_66 + 2)
	mov	a,r1
	lcall	__gptrput
;	sch8051.c:296: EA = 1; 
;	assignBit
	setb	_EA
;	sch8051.c:297: break; 
	ret
00102$:
;	sch8051.c:299: sch_tasks[sch_index].state = BLOCKED; 
	mov	dptr,#_sch_index
	movx	a,@dptr
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r0,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r1,a
	mov	a,#0x33
	add	a,r0
	mov	dpl,a
	clr	a
	addc	a,r1
	mov	dph,a
	mov	a,#0x02
	movx	@dptr,a
;	sch8051.c:300: sem->waiting_list[sch_index] = 1; 
	mov	dptr,#_sch_index
	movx	a,@dptr
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r1,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
;	sch8051.c:301: sch_next();  
	push	ar4
	push	ar3
	push	ar2
	lcall	_sch_next
	pop	ar2
	pop	ar3
	pop	ar4
;	sch8051.c:302: EA = 0; 
;	assignBit
	clr	_EA
;	sch8051.c:305: }
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'sch_semaphore_put'
;------------------------------------------------------------
;sem                       Allocated to registers r5 r6 r7 
;i                         Allocated to registers r1 
;------------------------------------------------------------
;	sch8051.c:307: Byte sch_semaphore_put(struct sch_semaphore_sync *sem) __critical __reentrant{
;	-----------------------------------------
;	 function sch_semaphore_put
;	-----------------------------------------
_sch_semaphore_put:
	setb	c
	jbc	ea,00129$
	clr	c
00129$:
	push	psw
;	sch8051.c:309: if(sem->lock < sem->share){
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	mov	a,#0x0b
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r2,a
	mov	ar3,r7
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	clr	c
	mov	a,r4
	subb	a,r1
	jc	00130$
	ljmp	00105$
00130$:
;	sch8051.c:310: sem->lock++;
	inc	r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	sch8051.c:311: for(i = 0; i < sch_num_tasks; i++){
	inc	r5
	cjne	r5,#0x00,00131$
	inc	r6
00131$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
	mov	r1,#0x00
00108$:
	mov	dptr,#_sch_num_tasks
	movx	a,@dptr
	mov	r0,a
	clr	c
	mov	a,r1
	subb	a,r0
	jnc	00103$
;	sch8051.c:312: if(sem->waiting_list[i] == 1){
	push	ar5
	push	ar6
	push	ar7
	mov	a,r1
	add	a,r2
	mov	r0,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	cjne	r0,#0x01,00133$
	sjmp	00134$
00133$:
	pop	ar7
	pop	ar6
	pop	ar5
	sjmp	00109$
00134$:
	pop	ar7
	pop	ar6
	pop	ar5
;	sch8051.c:313: sem->waiting_list[i] = 0; 
	push	ar2
	push	ar3
	push	ar4
	mov	a,r1
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
;	sch8051.c:314: sch_tasks[i].state = WAIT; 	
	mov	a,r1
	mov	b,#0x34
	mul	ab
	add	a,#_sch_tasks
	mov	r3,a
	mov	a,#(_sch_tasks >> 8)
	addc	a,b
	mov	r4,a
	mov	a,#0x33
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	sch8051.c:319: return 0; 
	pop	ar4
	pop	ar3
	pop	ar2
;	sch8051.c:314: sch_tasks[i].state = WAIT; 	
00109$:
;	sch8051.c:311: for(i = 0; i < sch_num_tasks; i++){
	inc	r1
	sjmp	00108$
00103$:
;	sch8051.c:317: return 1; 
	mov	dpl,#0x01
	sjmp	00110$
00105$:
;	sch8051.c:319: return 0; 
	mov	dpl,#0x00
00110$:
;	sch8051.c:321: }
	pop	psw
	mov	ea,c
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
