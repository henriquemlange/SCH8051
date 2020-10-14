/*-----------------------------------------------------------------------
        ARQUIVO COM PRINCIPAIS INFORMACOES DE HARDWARE E SOFTWARE

- Projeto Ultra com microcontrolador ADuC847;
- Ultima alteracao em 21/07/2020;
- Software de uso exclusivo a empresas do grupo MPA; 
- GIT: https://github.com/henriquemlange/Testes_Ultra. 
-------------------------------------------------------------------------
*/ 

#ifndef MAIN_H
#define MAIN_H

/*------------------------------------------------------------------------
                        FREQ. DO CRISTAL
ADuC487 -> 12582912Hz 
PARA OUTRAS VERSOES VERIFICAR VALORES NO DATASHEET OU NO PROJETO ELETRONICO
--------------------------------------------------------------------------
*/

#define crist_freq 12582912 

/*-----------------------------------------------------------------------
                        TIPOS DE DADOS COMUNS
-------------------------------------------------------------------------
*/

typedef unsigned char Byte; 
typedef unsigned int Word; 
typedef unsigned long Lword; 
typedef void ponteiro_funcoes(void *data) __reentrant; 

/*-----------------------------------------------------------------------
                    ENDERECOS DE MEMORY MAPPED IO
-------------------------------------------------------------------------
*/

// ENDERECOS GERAIS: 
#define END_RELES	0x8000	  // Endereco dos 4 reles. 
#define END_DAT_DISP	0xAFFF	  // Endereco dados display.
#define END_COM_DISP	0xA000	  // Endereco comandos display. 
#define END_TECLADO	0xB000 	  // Endereco do teclado. 
#define END_ENTRADAS	0xE000    // Endereco das entradas. 
#define END_SAIDAS	0xD000    // Endereco placa rele.
#define LINHA1	        0x00      // LINHA 1 DO DISPLAY. 
#define LINHA2	        0x40      // LINHA 2 DO DISPLAY.  
#define LINHA3	        0x10      // LINHA 3 DO DISPLAY.
#define LINHA4	        0x50      // LINHA 4 DO DISPLAY.

// VARIAVEIS ESPECIFICAS DE INTERFACE: 
volatile __xdata __at (END_DAT_DISP) unsigned char dados_display;
volatile __xdata __at (END_COM_DISP) unsigned char comandos_display;
volatile __xdata __at (END_TECLADO) unsigned char endereco_teclado;

/*-----------------------------------------------------------------------
                        ENDERECOS DAS TECLAS
-------------------------------------------------------------------------
*/

#define tecla_A 0xBF
#define tecla_B 0xEF
#define tecla_C 0xFB
#define tecla_D 0xFE
#define tecla_DIAR 0x7F
#define tecla_TELA 0xDF
#define tecla_NAO 0xF7
#define tecla_SIM 0xFD
#define nenhuma_tecla 0xFF

/*-----------------------------------------------------------------------
                        ENDERECOS DAS TELAS
-------------------------------------------------------------------------
*/

#define tela_inicial 0
#define tela_calib 1
#define tela_param 2 
#define tela_diar 3 
#define tela_media 4
#define tela_rejmaior 5
#define tela_rejmenor 6
#define tela_pemb 7
#define tela_descemb 8
#define tela_rejpos 9
#define tela_rejpor 10
#define tela_motorlig 11
#define tela_tempret 12
#define tela_tempest 13
#define tela_pro 14
#define tela_rej 15
#define tela_inm 16
#define tela_config 17
#define tela_datahora 18
#define tela_dia 19
#define tela_mes 20
#define tela_ano 21
#define tela_hora 22
#define tela_minuto 23
#define tela_filtro 24
#define tela_base 25
#define tela_resolucao 26
#define tela_tempozerar 27
#define tela_numleizerar 28
#define tela_zeroLR 29
#define tela_corrLR 30
#define tela_corracada 31
#define tela_rejsensor 32
#define tela_cursormed 33 
#define tela_ES 34

/*-----------------------------------------------------------------------
                OFFSET PARA PROGRAMAS SALVOS NA EEPROM
-------------------------------------------------------------------------
*/

#define offset_memoria 20

/*-----------------------------------------------------------------------
                    FIM DO ARQUIVO DE DEFINICOES
-------------------------------------------------------------------------
*/
#endif