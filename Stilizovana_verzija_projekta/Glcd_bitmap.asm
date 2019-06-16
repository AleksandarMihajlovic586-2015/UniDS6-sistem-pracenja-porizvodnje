
_main:

;Glcd_bitmap.c,41 :: 		void main() {
;Glcd_bitmap.c,42 :: 		ADCON1 = 0x0F;                                   // Konvertuje analogne pinove u digitalne
	MOVLW       15
	MOVWF       ADCON1+0 
;Glcd_bitmap.c,43 :: 		ADON_bit = 0;                                    // Gasi AD konvertor
	BCF         ADON_bit+0, BitPos(ADON_bit+0) 
;Glcd_bitmap.c,44 :: 		CMCON  = 0x07;
	MOVLW       7
	MOVWF       CMCON+0 
;Glcd_bitmap.c,45 :: 		agregat=5;
	MOVLW       5
	MOVWF       _agregat+0 
	MOVLW       0
	MOVWF       _agregat+1 
;Glcd_bitmap.c,46 :: 		motor=2;
	MOVLW       2
	MOVWF       _motor+0 
	MOVLW       0
	MOVWF       _motor+1 
;Glcd_bitmap.c,47 :: 		osovina=4;
	MOVLW       4
	MOVWF       _osovina+0 
	MOVLW       0
	MOVWF       _osovina+1 
;Glcd_bitmap.c,48 :: 		radilica=6;
	MOVLW       6
	MOVWF       _radilica+0 
	MOVLW       0
	MOVWF       _radilica+1 
;Glcd_bitmap.c,50 :: 		Glcd_Init();                                     // Inicijalizuje GLCD
	CALL        _Glcd_Init+0, 0
;Glcd_bitmap.c,51 :: 		Glcd_Fill(0x00);                                 // Brise sve sa GLCD-a
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Glcd_bitmap.c,54 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Glcd_bitmap.c,55 :: 		Glcd_Set_Font(System3x5, 3, 5, 32);
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
;Glcd_bitmap.c,56 :: 		Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2);
	MOVLW       ?lstr1_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr1_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,57 :: 		Glcd_Write_Text("   E0               A1    ",5,4,2);
	MOVLW       ?lstr2_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr2_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,58 :: 		Glcd_Rectangle(5, 32, 34, 40, 1);
	MOVLW       5
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       34
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       40
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,59 :: 		Glcd_Rectangle(72, 32, 103, 40, 1);
	MOVLW       72
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       103
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       40
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,61 :: 		do{
L_main0:
;Glcd_bitmap.c,62 :: 		if(SW7){
	BTFSS       PORTE+0, 0 
	GOTO        L_main3
;Glcd_bitmap.c,64 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Glcd_bitmap.c,65 :: 		Glcd_Write_Text("UPUTSTVO ZA UPOTREBU", 0, 0, 2);
	MOVLW       ?lstr3_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr3_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,66 :: 		Glcd_Set_Font(System3x5, 3, 5, 32);
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
;Glcd_bitmap.c,67 :: 		Glcd_Write_Text("KADA IZABERETE OPCIJU MENI,TADA", 0, 1, 2);
	MOVLW       ?lstr4_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr4_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,68 :: 		Glcd_Write_Text("CE SE POJAVITI NOVI PROZOR KOJI", 0, 2, 2);
	MOVLW       ?lstr5_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr5_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,69 :: 		Glcd_Write_Text("CE VAM RECI PORED PROIZVODA,NA", 0, 3, 2);
	MOVLW       ?lstr6_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr6_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,70 :: 		Glcd_Write_Text("KOJI TASTER MOZETE PRICI ISTOM  ", 0, 4, 2);
	MOVLW       ?lstr7_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr7_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,71 :: 		Glcd_Write_Text(",A ZATIM PUTEM DRUGOG TASTERA", 0, 5, 2);
	MOVLW       ?lstr8_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr8_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,72 :: 		Glcd_Write_Text("PROIZVESTI ILI PREUZETI PROIZVOD,", 0, 6, 2);
	MOVLW       ?lstr9_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr9_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,73 :: 		Glcd_Write_Text("AKO JE NA STANJU.      NAZAD(E1)",0,7,2);
	MOVLW       ?lstr10_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr10_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,74 :: 		Glcd_Rectangle(88, 56, 127, 63, 1);
	MOVLW       88
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       56
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       127
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       63
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,75 :: 		}
	GOTO        L_main4
L_main3:
;Glcd_bitmap.c,76 :: 		else if(SW1){
	BTFSS       PORTA+0, 1 
	GOTO        L_main5
;Glcd_bitmap.c,78 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Glcd_bitmap.c,79 :: 		Glcd_Write_Text("KORISNICKI MENI", 0, 0, 2);
	MOVLW       ?lstr11_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr11_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	CLRF        FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,80 :: 		Glcd_Write_Text("POGONSKI AGREGAT            A0", 0, 1, 2);
	MOVLW       ?lstr12_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr12_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,81 :: 		Glcd_Rectangle(100, 9, 127, 17, 1);
	MOVLW       100
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       9
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       127
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       17
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,82 :: 		Glcd_Write_Text("DVOTAKTNI DIZEL MOTOR       E1", 0, 3, 2);
	MOVLW       ?lstr13_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr13_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,83 :: 		Glcd_Rectangle(100, 24, 127, 32, 1);
	MOVLW       100
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       24
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       127
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,84 :: 		Glcd_Write_Text("RADILICA                    E0", 0, 5, 2);
	MOVLW       ?lstr14_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr14_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,85 :: 		Glcd_Rectangle(100, 41, 127, 48, 1);
	MOVLW       100
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       41
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       127
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       48
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,86 :: 		Glcd_Write_Text("OSOVINA                     E2", 0, 7, 2);
	MOVLW       ?lstr15_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr15_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       7
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,87 :: 		Glcd_Rectangle(100, 56, 127, 63, 1);
	MOVLW       100
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       56
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       127
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       63
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,88 :: 		do{
L_main6:
;Glcd_bitmap.c,89 :: 		if(SW0){
	BTFSS       PORTA+0, 0 
	GOTO        L_main9
;Glcd_bitmap.c,90 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Glcd_bitmap.c,91 :: 		Glcd_Write_Text("        POGONSKI AGREGAT", 0, 1, 2);
	MOVLW       ?lstr16_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr16_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	CLRF        FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,92 :: 		Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
	MOVLW       ?lstr17_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr17_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,93 :: 		Glcd_Write_Text("    A1              E2",5,4,2);
	MOVLW       ?lstr18_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr18_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,94 :: 		Glcd_Rectangle(7, 32, 38, 40, 1);
	MOVLW       7
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       38
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       40
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,95 :: 		Glcd_Rectangle(72, 32, 103, 40, 1);
	MOVLW       72
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       103
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       40
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,98 :: 		do{
L_main10:
;Glcd_bitmap.c,100 :: 		if(SW1){
	BTFSS       PORTA+0, 1 
	GOTO        L_main13
;Glcd_bitmap.c,101 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Glcd_bitmap.c,102 :: 		Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
	MOVLW       ?lstr19_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr19_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,103 :: 		agregat=agregat +1;
	INFSNZ      _agregat+0, 1 
	INCF        _agregat+1, 1 
;Glcd_bitmap.c,104 :: 		}
	GOTO        L_main14
L_main13:
;Glcd_bitmap.c,105 :: 		else if(SW5){
	BTFSS       PORTE+0, 2 
	GOTO        L_main15
;Glcd_bitmap.c,106 :: 		if(agregat>0){
	MOVLW       0
	MOVWF       R0 
	MOVF        _agregat+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main21
	MOVF        _agregat+0, 0 
	SUBLW       0
L__main21:
	BTFSC       STATUS+0, 0 
	GOTO        L_main16
;Glcd_bitmap.c,107 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Glcd_bitmap.c,108 :: 		Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
	MOVLW       ?lstr20_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr20_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,109 :: 		agregat=agregat-1;
	MOVLW       1
	SUBWF       _agregat+0, 1 
	MOVLW       0
	SUBWFB      _agregat+1, 1 
;Glcd_bitmap.c,110 :: 		}
	GOTO        L_main17
L_main16:
;Glcd_bitmap.c,112 :: 		Glcd_fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Glcd_bitmap.c,113 :: 		Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
	MOVLW       ?lstr21_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr21_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,114 :: 		Glcd_Write_Text("PROIZVEDI",5,5,2);
	MOVLW       ?lstr22_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr22_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,115 :: 		Glcd_Write_Text("    A1  ",5,6,2);
	MOVLW       ?lstr23_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr23_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       6
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,116 :: 		Glcd_Rectangle(13, 49, 36, 57, 1);
	MOVLW       13
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       49
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       36
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       57
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,117 :: 		agregat=0;
	CLRF        _agregat+0 
	CLRF        _agregat+1 
;Glcd_bitmap.c,118 :: 		}
L_main17:
;Glcd_bitmap.c,119 :: 		}
L_main15:
L_main14:
;Glcd_bitmap.c,122 :: 		}while(1);
	GOTO        L_main10
;Glcd_bitmap.c,123 :: 		}
L_main9:
;Glcd_bitmap.c,226 :: 		}while(1);
	GOTO        L_main6
;Glcd_bitmap.c,228 :: 		}
L_main5:
;Glcd_bitmap.c,229 :: 		else if(SW6){
	BTFSS       PORTE+0, 1 
	GOTO        L_main19
;Glcd_bitmap.c,230 :: 		Glcd_Fill(0x00);
	CLRF        FARG_Glcd_Fill_pattern+0 
	CALL        _Glcd_Fill+0, 0
;Glcd_bitmap.c,231 :: 		Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2);
	MOVLW       ?lstr24_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr24_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       3
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,232 :: 		Glcd_Write_Text("   E0               A1    ",5,4,2);
	MOVLW       ?lstr25_Glcd_bitmap+0
	MOVWF       FARG_Glcd_Write_Text_text+0 
	MOVLW       hi_addr(?lstr25_Glcd_bitmap+0)
	MOVWF       FARG_Glcd_Write_Text_text+1 
	MOVLW       5
	MOVWF       FARG_Glcd_Write_Text_x_pos+0 
	MOVLW       4
	MOVWF       FARG_Glcd_Write_Text_page_num+0 
	MOVLW       2
	MOVWF       FARG_Glcd_Write_Text_color+0 
	CALL        _Glcd_Write_Text+0, 0
;Glcd_bitmap.c,233 :: 		Glcd_Rectangle(5, 32, 34, 40, 1);
	MOVLW       5
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       34
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       40
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,234 :: 		Glcd_Rectangle(72, 32, 103, 40, 1);
	MOVLW       72
	MOVWF       FARG_Glcd_Rectangle_x_upper_left+0 
	MOVLW       32
	MOVWF       FARG_Glcd_Rectangle_y_upper_left+0 
	MOVLW       103
	MOVWF       FARG_Glcd_Rectangle_x_bottom_right+0 
	MOVLW       40
	MOVWF       FARG_Glcd_Rectangle_y_bottom_right+0 
	MOVLW       1
	MOVWF       FARG_Glcd_Rectangle_color+0 
	CALL        _Glcd_Rectangle+0, 0
;Glcd_bitmap.c,235 :: 		}
L_main19:
L_main4:
;Glcd_bitmap.c,237 :: 		}while(1);
	GOTO        L_main0
;Glcd_bitmap.c,239 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
