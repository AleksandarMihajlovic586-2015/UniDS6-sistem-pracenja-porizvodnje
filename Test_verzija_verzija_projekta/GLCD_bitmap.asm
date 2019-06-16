
_main:

;GLCD_bitmap.c,26 :: 		void main() {
;GLCD_bitmap.c,27 :: 		ADCON1 = 0x0F;                                   // Konvertuje analogne pinove u digitalne
	MOVLW       15
	MOVWF       ADCON1+0 
;GLCD_bitmap.c,28 :: 		ADON_bit = 0;                                    // Gasi AD konvertor
	BCF         ADON_bit+0, BitPos(ADON_bit+0) 
;GLCD_bitmap.c,29 :: 		CMCON  = 0x07;
	MOVLW       7
	MOVWF       CMCON+0 
;GLCD_bitmap.c,30 :: 		agregat=5;
	MOVLW       5
	MOVWF       _agregat+0 
	MOVLW       0
	MOVWF       _agregat+1 
;GLCD_bitmap.c,31 :: 		motor=2;
	MOVLW       2
	MOVWF       _motor+0 
	MOVLW       0
	MOVWF       _motor+1 
;GLCD_bitmap.c,32 :: 		osovina=4;
	MOVLW       4
	MOVWF       _osovina+0 
	MOVLW       0
	MOVWF       _osovina+1 
;GLCD_bitmap.c,33 :: 		radilica=6;
	MOVLW       6
	MOVWF       _radilica+0 
	MOVLW       0
	MOVWF       _radilica+1 
;GLCD_bitmap.c,35 :: 		Glcd_Init();                                     // Inicijalizuje GLCD
	CALL        _Glcd_Init+0, 0
;GLCD_bitmap.c,36 :: 		Glcd_Fill(0x00);                                 // Brise sve sa GLCD-a
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,38 :: 		Glcd_Set_Font(System3x5, 3, 5, 32);
	MOVLW       _System3x5+0
	MOVWF       FARG_Glcd_Set_Font_activeFont+0 
	MOVLW       hi_addr(_System3x5+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+1 
	MOVLW       higher_addr(_System3x5+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+2 
	MOVLW       3
	MOVWF       FARG_Glcd_Set_Font_aFontWidth+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Set_Font_aFontHeight+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+1 
	CALL        _Glcd_Set_Font+0, 0
;GLCD_bitmap.c,39 :: 		Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2);
	MOVLW       ?lstr1_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr1_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,40 :: 		Glcd_Write_Text("   E0               A1    ",5,4,2);
	MOVLW       ?lstr2_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr2_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,42 :: 		do{
L_main0:
;GLCD_bitmap.c,43 :: 		if(SW7){
	BTFSS       PORTE+0, 0 
	GOTO        L_main3
;GLCD_bitmap.c,45 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,46 :: 		Glcd_Write_Text("UPUTSTVO ZA UPOTREBU", 0, 0, 2);
	MOVLW       ?lstr3_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr3_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,47 :: 		Glcd_Set_Font(System3x5, 3, 5, 32);
	MOVLW       _System3x5+0
	MOVWF       FARG_Glcd_Set_Font_activeFont+0 
	MOVLW       hi_addr(_System3x5+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+1 
	MOVLW       higher_addr(_System3x5+0)
	MOVWF       FARG_Glcd_Set_Font_activeFont+2 
	MOVLW       3
	MOVWF       FARG_Glcd_Set_Font_aFontWidth+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Set_Font_aFontHeight+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+0 
	MOVLW       0
	MOVWF       FARG_Glcd_Set_Font_aFontOffs+1 
	CALL        _Glcd_Set_Font+0, 0
;GLCD_bitmap.c,48 :: 		Glcd_Write_Text("KADA IZABERETE OPCIJU MENI,TADA", 0, 1, 2);
	MOVLW       ?lstr4_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr4_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,49 :: 		Glcd_Write_Text("CE SE POJAVITI NOVI PROZOR KOJI", 0, 2, 2);
	MOVLW       ?lstr5_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr5_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,50 :: 		Glcd_Write_Text("CE VAM RECI PORED PROIZVODA,NA", 0, 3, 2);
	MOVLW       ?lstr6_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr6_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,51 :: 		Glcd_Write_Text("KOJI TASTER MOZETE PRICI ISTOM  ", 0, 4, 2);
	MOVLW       ?lstr7_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr7_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,52 :: 		Glcd_Write_Text(",A ZATIM PUTEM DRUGOG TASTERA", 0, 5, 2);
	MOVLW       ?lstr8_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr8_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,53 :: 		Glcd_Write_Text("PROIZVESTI ILI PREUZETI PROIZVOD,", 0, 6, 2);
	MOVLW       ?lstr9_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr9_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,54 :: 		Glcd_Write_Text("AKO JE NA STANJU.      NAZAD(E1)",0,7,2);
	MOVLW       ?lstr10_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr10_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,55 :: 		}
	GOTO        L_main4
L_main3:
;GLCD_bitmap.c,56 :: 		else if(SW1){
	BTFSS       PORTA+0, 1 
	GOTO        L_main5
;GLCD_bitmap.c,58 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,59 :: 		Glcd_Write_Text("KORISNICKI MENI", 0, 0, 2);
	MOVLW       ?lstr11_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr11_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,60 :: 		Glcd_Write_Text("POGONSKI AGREGAT            A0", 0, 1, 2);
	MOVLW       ?lstr12_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr12_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,61 :: 		Glcd_Write_Text("DVOTAKTNI DIZEL MOTOR       E1", 0, 3, 2);
	MOVLW       ?lstr13_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr13_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,62 :: 		Glcd_Write_Text("RADILICA                    E0", 0, 5, 2);
	MOVLW       ?lstr14_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr14_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,63 :: 		Glcd_Write_Text("OSOVINA                     E2", 0, 7, 2);
	MOVLW       ?lstr15_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr15_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,64 :: 		do{
L_main6:
;GLCD_bitmap.c,65 :: 		if(SW0){
	BTFSS       PORTA+0, 0 
	GOTO        L_main9
;GLCD_bitmap.c,66 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,67 :: 		Glcd_Write_Text("        POGONSKI AGREGAT", 0, 1, 2);
	MOVLW       ?lstr16_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr16_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,68 :: 		Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
	MOVLW       ?lstr17_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr17_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,69 :: 		Glcd_Write_Text("    A1              E2",5,4,2);
	MOVLW       ?lstr18_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr18_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,71 :: 		do{
L_main10:
;GLCD_bitmap.c,73 :: 		if(SW1){
	BTFSS       PORTA+0, 1 
	GOTO        L_main13
;GLCD_bitmap.c,74 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,75 :: 		Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
	MOVLW       ?lstr19_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr19_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,76 :: 		agregat=agregat +1;
	INFSNZ      _agregat+0, 1 
	INCF        _agregat+1, 1 
;GLCD_bitmap.c,77 :: 		}
	GOTO        L_main14
L_main13:
;GLCD_bitmap.c,78 :: 		else if(SW5){
	BTFSS       PORTE+0, 2 
	GOTO        L_main15
;GLCD_bitmap.c,79 :: 		if(agregat>0){
	MOVLW       0
	MOVWF       R0 
	MOVF        _agregat+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main51
	MOVF        _agregat+0, 0 
	SUBLW       0
L__main51:
	BTFSC       STATUS+0, 0 
	GOTO        L_main16
;GLCD_bitmap.c,80 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,81 :: 		Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
	MOVLW       ?lstr20_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr20_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,82 :: 		agregat=agregat-1;
	MOVLW       1
	SUBWF       _agregat+0, 1 
	MOVLW       0
	SUBWFB      _agregat+1, 1 
;GLCD_bitmap.c,83 :: 		}
	GOTO        L_main17
L_main16:
;GLCD_bitmap.c,85 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,86 :: 		Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
	MOVLW       ?lstr21_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr21_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,87 :: 		Glcd_Write_Text("PROIZVEDI",5,5,2);
	MOVLW       ?lstr22_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr22_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,88 :: 		Glcd_Write_Text("    A1  ",5,6,2);
	MOVLW       ?lstr23_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr23_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,89 :: 		agregat=0;
	CLRF        _agregat+0 
	CLRF        _agregat+1 
;GLCD_bitmap.c,90 :: 		}
L_main17:
;GLCD_bitmap.c,91 :: 		}
L_main15:
L_main14:
;GLCD_bitmap.c,94 :: 		}while(1);
	GOTO        L_main10
;GLCD_bitmap.c,95 :: 		}
L_main9:
;GLCD_bitmap.c,97 :: 		else if (SW6){
	BTFSS       PORTE+0, 1 
	GOTO        L_main19
;GLCD_bitmap.c,98 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,99 :: 		Glcd_Write_Text("       DVOTAKTNI DIZEL MOTOR", 0, 1, 2);
	MOVLW       ?lstr24_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr24_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,100 :: 		Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
	MOVLW       ?lstr25_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr25_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,101 :: 		Glcd_Write_Text("    A1              E2",5,4,2);
	MOVLW       ?lstr26_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr26_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,102 :: 		do{
L_main20:
;GLCD_bitmap.c,103 :: 		if(SW1){
	BTFSS       PORTA+0, 1 
	GOTO        L_main23
;GLCD_bitmap.c,104 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,105 :: 		Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
	MOVLW       ?lstr27_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr27_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,106 :: 		motor=motor+1;
	INFSNZ      _motor+0, 1 
	INCF        _motor+1, 1 
;GLCD_bitmap.c,107 :: 		}
	GOTO        L_main24
L_main23:
;GLCD_bitmap.c,108 :: 		else if(SW5){
	BTFSS       PORTE+0, 2 
	GOTO        L_main25
;GLCD_bitmap.c,109 :: 		if(motor>0){
	MOVLW       0
	MOVWF       R0 
	MOVF        _motor+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main52
	MOVF        _motor+0, 0 
	SUBLW       0
L__main52:
	BTFSC       STATUS+0, 0 
	GOTO        L_main26
;GLCD_bitmap.c,110 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,111 :: 		Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
	MOVLW       ?lstr28_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr28_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,112 :: 		motor=motor-1;
	MOVLW       1
	SUBWF       _motor+0, 1 
	MOVLW       0
	SUBWFB      _motor+1, 1 
;GLCD_bitmap.c,113 :: 		}
	GOTO        L_main27
L_main26:
;GLCD_bitmap.c,115 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,116 :: 		Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
	MOVLW       ?lstr29_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr29_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,117 :: 		Glcd_Write_Text("PROIZVEDI",5,5,2);
	MOVLW       ?lstr30_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr30_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,118 :: 		Glcd_Write_Text("    A1  ",5,6,2);
	MOVLW       ?lstr31_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr31_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,119 :: 		motor=0;
	CLRF        _motor+0 
	CLRF        _motor+1 
;GLCD_bitmap.c,120 :: 		}
L_main27:
;GLCD_bitmap.c,121 :: 		}
L_main25:
L_main24:
;GLCD_bitmap.c,124 :: 		}while(1);
	GOTO        L_main20
;GLCD_bitmap.c,126 :: 		}
L_main19:
;GLCD_bitmap.c,128 :: 		else if(SW7){
	BTFSS       PORTE+0, 0 
	GOTO        L_main29
;GLCD_bitmap.c,129 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,130 :: 		Glcd_Write_Text("       RADILICA", 0, 1, 2);
	MOVLW       ?lstr32_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr32_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,131 :: 		Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
	MOVLW       ?lstr33_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr33_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,132 :: 		Glcd_Write_Text("    A1              E2",5,4,2);
	MOVLW       ?lstr34_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr34_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,133 :: 		do{
L_main30:
;GLCD_bitmap.c,134 :: 		if(SW1){
	BTFSS       PORTA+0, 1 
	GOTO        L_main33
;GLCD_bitmap.c,135 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,136 :: 		Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
	MOVLW       ?lstr35_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr35_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,138 :: 		radilica=radilica+1;
	INFSNZ      _radilica+0, 1 
	INCF        _radilica+1, 1 
;GLCD_bitmap.c,139 :: 		}
	GOTO        L_main34
L_main33:
;GLCD_bitmap.c,140 :: 		else if(SW5){
	BTFSS       PORTE+0, 2 
	GOTO        L_main35
;GLCD_bitmap.c,141 :: 		if(radilica>0){
	MOVLW       0
	MOVWF       R0 
	MOVF        _radilica+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main53
	MOVF        _radilica+0, 0 
	SUBLW       0
L__main53:
	BTFSC       STATUS+0, 0 
	GOTO        L_main36
;GLCD_bitmap.c,142 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,143 :: 		Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
	MOVLW       ?lstr36_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr36_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,144 :: 		radilica=radilica-1;
	MOVLW       1
	SUBWF       _radilica+0, 1 
	MOVLW       0
	SUBWFB      _radilica+1, 1 
;GLCD_bitmap.c,145 :: 		}
	GOTO        L_main37
L_main36:
;GLCD_bitmap.c,147 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,148 :: 		Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
	MOVLW       ?lstr37_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr37_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,149 :: 		Glcd_Write_Text("PROIZVEDI",5,5,2);
	MOVLW       ?lstr38_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr38_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,150 :: 		Glcd_Write_Text("    A1  ",5,6,2);
	MOVLW       ?lstr39_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr39_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,151 :: 		radilica=0;
	CLRF        _radilica+0 
	CLRF        _radilica+1 
;GLCD_bitmap.c,152 :: 		}
L_main37:
;GLCD_bitmap.c,153 :: 		}
L_main35:
L_main34:
;GLCD_bitmap.c,156 :: 		}while(1);
	GOTO        L_main30
;GLCD_bitmap.c,157 :: 		}
L_main29:
;GLCD_bitmap.c,158 :: 		else if(SW5){
	BTFSS       PORTE+0, 2 
	GOTO        L_main39
;GLCD_bitmap.c,159 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,160 :: 		Glcd_Write_Text("       OSOVINA", 0, 1, 2);
	MOVLW       ?lstr40_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr40_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,161 :: 		Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
	MOVLW       ?lstr41_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr41_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,162 :: 		Glcd_Write_Text("    A1              A0",5,4,2);
	MOVLW       ?lstr42_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr42_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,163 :: 		do{
L_main40:
;GLCD_bitmap.c,164 :: 		if(SW1){
	BTFSS       PORTA+0, 1 
	GOTO        L_main43
;GLCD_bitmap.c,165 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,166 :: 		Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
	MOVLW       ?lstr43_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr43_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,167 :: 		osovina=osovina+1;
	INFSNZ      _osovina+0, 1 
	INCF        _osovina+1, 1 
;GLCD_bitmap.c,168 :: 		}
	GOTO        L_main44
L_main43:
;GLCD_bitmap.c,169 :: 		else if(SW0){
	BTFSS       PORTA+0, 0 
	GOTO        L_main45
;GLCD_bitmap.c,170 :: 		if(osovina>0){
	MOVLW       0
	MOVWF       R0 
	MOVF        _osovina+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main54
	MOVF        _osovina+0, 0 
	SUBLW       0
L__main54:
	BTFSC       STATUS+0, 0 
	GOTO        L_main46
;GLCD_bitmap.c,171 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,172 :: 		Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
	MOVLW       ?lstr44_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr44_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,173 :: 		osovina=osovina-1;
	MOVLW       1
	SUBWF       _osovina+0, 1 
	MOVLW       0
	SUBWFB      _osovina+1, 1 
;GLCD_bitmap.c,174 :: 		}
	GOTO        L_main47
L_main46:
;GLCD_bitmap.c,176 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,177 :: 		Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
	MOVLW       ?lstr45_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr45_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,178 :: 		Glcd_Write_Text("PROIZVEDI",5,5,2);
	MOVLW       ?lstr46_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr46_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,179 :: 		Glcd_Write_Text("    A1  ",5,6,2);
	MOVLW       ?lstr47_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr47_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,180 :: 		osovina=0;
	CLRF        _osovina+0 
	CLRF        _osovina+1 
;GLCD_bitmap.c,181 :: 		}
L_main47:
;GLCD_bitmap.c,182 :: 		}
L_main45:
L_main44:
;GLCD_bitmap.c,185 :: 		}while(1);
	GOTO        L_main40
;GLCD_bitmap.c,187 :: 		}
L_main39:
;GLCD_bitmap.c,188 :: 		}while(1);
	GOTO        L_main6
;GLCD_bitmap.c,190 :: 		}
L_main5:
;GLCD_bitmap.c,191 :: 		else if(SW6){
	BTFSS       PORTE+0, 1 
	GOTO        L_main49
;GLCD_bitmap.c,192 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;GLCD_bitmap.c,193 :: 		Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2);
	MOVLW       ?lstr48_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr48_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,194 :: 		Glcd_Write_Text("   E0               A1    ",5,4,2);
	MOVLW       ?lstr49_GLCD_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr49_GLCD_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;GLCD_bitmap.c,195 :: 		}
L_main49:
L_main4:
;GLCD_bitmap.c,196 :: 		}while(1);
	GOTO        L_main0
;GLCD_bitmap.c,198 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
