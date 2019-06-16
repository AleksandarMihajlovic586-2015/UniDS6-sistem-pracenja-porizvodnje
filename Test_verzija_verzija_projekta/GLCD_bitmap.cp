#line 1 "C:/Users/Aca/Downloads/Test_verzija/GLCD_bitmap.c"








unsigned int agregat,motor,osovina,radilica;

char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at LATB0_bit;
sbit GLCD_CS2 at LATB1_bit;
sbit GLCD_RS at LATB2_bit;
sbit GLCD_RW at LATB3_bit;
sbit GLCD_EN at LATB5_bit;
sbit GLCD_RST at LATB4_bit;

sbit GLCD_CS1_Direction at TRISB0_bit;
sbit GLCD_CS2_Direction at TRISB1_bit;
sbit GLCD_RS_Direction at TRISB2_bit;
sbit GLCD_RW_Direction at TRISB3_bit;
sbit GLCD_RST_Direction at TRISB4_bit;
sbit GLCD_EN_Direction at TRISB5_bit;
void main() {
 ADCON1 = 0x0F;
 ADON_bit = 0;
 CMCON = 0x07;
 agregat=5;
 motor=2;
 osovina=4;
 radilica=6;

 Glcd_Init();
 Glcd_Fill(0x00);

 Glcd_Set_Font(System3x5, 3, 5, 32);
 Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2);
 Glcd_Write_Text("   E0               A1    ",5,4,2);

 do{
 if( PORTE.F0 ){

 Glcd_fill(0x00);
 Glcd_Write_Text("UPUTSTVO ZA UPOTREBU", 0, 0, 2);
 Glcd_Set_Font(System3x5, 3, 5, 32);
 Glcd_Write_Text("KADA IZABERETE OPCIJU MENI,TADA", 0, 1, 2);
 Glcd_Write_Text("CE SE POJAVITI NOVI PROZOR KOJI", 0, 2, 2);
 Glcd_Write_Text("CE VAM RECI PORED PROIZVODA,NA", 0, 3, 2);
 Glcd_Write_Text("KOJI TASTER MOZETE PRICI ISTOM  ", 0, 4, 2);
 Glcd_Write_Text(",A ZATIM PUTEM DRUGOG TASTERA", 0, 5, 2);
 Glcd_Write_Text("PROIZVESTI ILI PREUZETI PROIZVOD,", 0, 6, 2);
 Glcd_Write_Text("AKO JE NA STANJU.      NAZAD(E1)",0,7,2);
 }
 else if( PORTA.F1 ){

 Glcd_fill(0x00);
 Glcd_Write_Text("KORISNICKI MENI", 0, 0, 2);
 Glcd_Write_Text("POGONSKI AGREGAT            A0", 0, 1, 2);
 Glcd_Write_Text("DVOTAKTNI DIZEL MOTOR       E1", 0, 3, 2);
 Glcd_Write_Text("RADILICA                    E0", 0, 5, 2);
 Glcd_Write_Text("OSOVINA                     E2", 0, 7, 2);
 do{
 if( PORTA.F0 ){
 Glcd_fill(0x00);
 Glcd_Write_Text("        POGONSKI AGREGAT", 0, 1, 2);
 Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
 Glcd_Write_Text("    A1              E2",5,4,2);

 do{

 if( PORTA.F1 ){
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
 agregat=agregat +1;
 }
 else if( PORTE.F2 ){
 if(agregat>0){
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
 agregat=agregat-1;
 }
 else{
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
 Glcd_Write_Text("PROIZVEDI",5,5,2);
 Glcd_Write_Text("    A1  ",5,6,2);
 agregat=0;
 }
 }


 }while(1);
 }

 else if ( PORTE.F1 ){
 Glcd_fill(0x00);
 Glcd_Write_Text("       DVOTAKTNI DIZEL MOTOR", 0, 1, 2);
 Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
 Glcd_Write_Text("    A1              E2",5,4,2);
 do{
 if( PORTA.F1 ){
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
 motor=motor+1;
 }
 else if( PORTE.F2 ){
 if(motor>0){
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
 motor=motor-1;
 }
 else{
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
 Glcd_Write_Text("PROIZVEDI",5,5,2);
 Glcd_Write_Text("    A1  ",5,6,2);
 motor=0;
 }
 }


 }while(1);

 }

 else if( PORTE.F0 ){
 Glcd_fill(0x00);
 Glcd_Write_Text("       RADILICA", 0, 1, 2);
 Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
 Glcd_Write_Text("    A1              E2",5,4,2);
 do{
 if( PORTA.F1 ){
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);

 radilica=radilica+1;
 }
 else if( PORTE.F2 ){
 if(radilica>0){
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
 radilica=radilica-1;
 }
 else{
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
 Glcd_Write_Text("PROIZVEDI",5,5,2);
 Glcd_Write_Text("    A1  ",5,6,2);
 radilica=0;
 }
 }


 }while(1);
 }
 else if( PORTE.F2 ){
 Glcd_fill(0x00);
 Glcd_Write_Text("       OSOVINA", 0, 1, 2);
 Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
 Glcd_Write_Text("    A1              A0",5,4,2);
 do{
 if( PORTA.F1 ){
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
 osovina=osovina+1;
 }
 else if( PORTA.F0 ){
 if(osovina>0){
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
 osovina=osovina-1;
 }
 else{
 Glcd_fill(0x00);
 Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
 Glcd_Write_Text("PROIZVEDI",5,5,2);
 Glcd_Write_Text("    A1  ",5,6,2);
 osovina=0;
 }
 }


 }while(1);

 }
 }while(1);

 }
 else if( PORTE.F1 ){
 Glcd_Fill(0x00);
 Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2);
 Glcd_Write_Text("   E0               A1    ",5,4,2);
 }
 }while(1);

}
