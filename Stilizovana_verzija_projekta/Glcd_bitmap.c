#define SW7 PORTE.F0
#define SW6 PORTE.F1
#define SW5 PORTE.F2
#define SW4 PORTE.F3
#define SW3 PORTA.F3
#define SW2 PORTA.F2
#define SW1 PORTA.F1
#define SW0 PORTA.F0
unsigned int agregat,motor,osovina,radilica;
char Aagregat,Mmotor,Oosovina,Rradilica;
/*const code char slika[1024] = {
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 128, 192, 192, 192, 128, 128,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 128, 192, 192, 128, 128,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 192, 224, 240, 248, 248, 252, 252, 254, 254, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 126, 124,  60,  56,  24,  16,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   8,  24,  28,  60,  62, 254, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 254, 254, 252, 252, 248, 248, 240, 240, 224, 128,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  24,  60,  62, 127, 127, 255, 255, 255, 255, 127, 127,  63,  63,  31,  31,  15,  15,   7,  15,  15,  31,  31,  63,  63, 127, 127, 255, 255, 254, 254, 252, 252, 248, 248, 240, 240, 224, 224, 192, 192, 160, 176, 112, 120, 248, 252, 252, 254, 254, 255, 255, 127, 127,  63,  63,  31,  31,  15,  15,   7,   7,  15,  15,  31,  31,  63,  63, 127, 127, 255, 255, 255, 255, 127, 126,  60,  48,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0, 128, 128, 192, 192, 224, 224, 240, 240, 249, 249, 255, 251, 255, 247, 255, 239, 127,  95,  63,  63, 127, 127, 255, 255, 254, 254, 253, 253, 249, 248, 240, 240, 224, 192, 192, 128, 128,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  48,  48, 120, 120, 252, 252, 254, 254, 255, 255, 127, 127,  63,  63,  31,  31,  15,  15,   7,   7,   3,   3,   1,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   1,   1,   3,   3,   7,   7,  15,  15,  31,  31,  63,  63, 127, 127, 255, 254, 254, 252, 252, 120, 120,  48,  48,  32,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,  48, 240, 240, 240, 240, 240, 240, 240, 240, 240,  96,   0, 192, 192, 192, 192, 192, 192, 192, 192, 192, 192, 192,   0, 128, 192, 192, 192, 192, 241, 240, 240, 240, 240, 176,   0,  64, 192, 224, 224, 192, 192, 224, 224, 192, 192, 128,   0, 192, 208, 248, 248, 248, 208,   0,  16,  48, 240, 240, 240, 240, 192, 192, 192, 192, 192, 192,  64, 128, 224, 224, 240, 240, 113,  49, 112, 112, 112, 112, 112, 128, 192, 192, 192, 192, 192, 192, 192, 192, 128,  64, 192, 192, 224, 192, 192, 192, 192, 192,  64, 192, 192, 192, 192, 192, 192, 192, 192, 192, 192, 192, 128,   0,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   6,   7,   7,   7,   7,   6,   7,   7,   7,   7,   7,   6,   6,   3,   7,   7,   7,   7,   6,   7,   7,   7,   7,   6,   3,   3,   7,   7,   6,   6,   7,   7,   7,   7,   6,   6,   6,   7,   7,   7,   7,   6,   6,   7,   7,   7,   7,   6,   6,   6,   7,   7,   7,   7,   6,   6,   6,   7,   7,   7,   7,   7,   7,   7,   7,   6,   6,   6,   4,   3,   3,   7,   7,   7,   6,   6,   7,   7,   2,   2,   3,   7,   7,   7,   6,   6,   7,   7,   3,   3,   6,   7,   7,   7,   7,   6,   6,   0,   0,   0,  16,  24,  31,  31,  31,  31,  31,  30,   7,   7,   7,   3,   1,   0,   0,   0,   0,   0,
  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
};         */




// Glcd module connections
char GLCD_DataPort at PORTD;

sbit GLCD_CS1 at LATB0_bit;
sbit GLCD_CS2 at LATB1_bit;
sbit GLCD_RS  at LATB2_bit;
sbit GLCD_RW  at LATB3_bit;
sbit GLCD_EN  at LATB5_bit;
sbit GLCD_RST at LATB4_bit;

sbit GLCD_CS1_Direction at TRISB0_bit;
sbit GLCD_CS2_Direction at TRISB1_bit;
sbit GLCD_RS_Direction  at TRISB2_bit;
sbit GLCD_RW_Direction  at TRISB3_bit;
sbit GLCD_RST_Direction  at TRISB4_bit;
sbit GLCD_EN_Direction at TRISB5_bit;
void main() {
  ADCON1 = 0x0F;                                   // Konvertuje analogne pinove u digitalne
  ADON_bit = 0;                                    // Gasi AD konvertor
  CMCON  = 0x07;
  agregat=5;
  motor=2;
  osovina=4;
  radilica=6;
  
  Glcd_Init();                                     // Inicijalizuje GLCD
  Glcd_Fill(0x00);                                 // Brise sve sa GLCD-a

 // Glcd_Image(slika);            // Iscrtava sliku na ekranu
  Glcd_Fill(0x00);
  Glcd_Set_Font(System3x5, 3, 5, 32);
  Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2);
  Glcd_Write_Text("   E0               A1    ",5,4,2);
  Glcd_Rectangle(5, 32, 34, 40, 1);
  Glcd_Rectangle(72, 32, 103, 40, 1);

      do{
      if(SW7){

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
      Glcd_Rectangle(88, 56, 127, 63, 1);
         }
         else if(SW1){

          Glcd_fill(0x00);
           Glcd_Write_Text("KORISNICKI MENI", 0, 0, 2);
           Glcd_Write_Text("POGONSKI AGREGAT            A0", 0, 1, 2);
           Glcd_Rectangle(100, 9, 127, 17, 1);
           Glcd_Write_Text("DVOTAKTNI DIZEL MOTOR       E1", 0, 3, 2);
           Glcd_Rectangle(100, 24, 127, 32, 1);
           Glcd_Write_Text("RADILICA                    E0", 0, 5, 2);
           Glcd_Rectangle(100, 41, 127, 48, 1);
           Glcd_Write_Text("OSOVINA                     E2", 0, 7, 2);
           Glcd_Rectangle(100, 56, 127, 63, 1);
           do{
              if(SW0){
               Glcd_fill(0x00);
               Glcd_Write_Text("        POGONSKI AGREGAT", 0, 1, 2);
               Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
               Glcd_Write_Text("    A1              E2",5,4,2);
               Glcd_Rectangle(7, 32, 38, 40, 1);
               Glcd_Rectangle(72, 32, 103, 40, 1);


               do{

                 if(SW1){
                    Glcd_fill(0x00);
                    Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
                    agregat=agregat +1;
                 }
                 else if(SW5){
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
                   Glcd_Rectangle(13, 49, 36, 57, 1);
                   agregat=0;
                   }
                 }


               }while(1);
              }
              /*
              else if (SW6){
                Glcd_fill(0x00);
                Glcd_Write_Text("       DVOTAKTNI DIZEL MOTOR", 0, 1, 2);
                Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
                Glcd_Write_Text("    A1              E2",5,4,2);
               // Glcd_Rectangle(7, 32, 38, 40, 1);
               // Glcd_Rectangle(72, 32, 103, 40, 1);
                do{
                 if(SW1){
                    Glcd_fill(0x00);
                    Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
                    motor=motor+1;
                 }
                 else if(SW5){
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
                  // Glcd_Rectangle(13, 49, 36, 57, 1);
                   motor=0;
                   }
                 }


               }while(1);

              }

              else if(SW7){
                Glcd_fill(0x00);
                Glcd_Write_Text("       RADILICA", 0, 1, 2);
                Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
                Glcd_Write_Text("    A1              E2",5,4,2);
              //  Glcd_Rectangle(7, 32, 38, 40, 1);
              //  Glcd_Rectangle(72, 32, 103, 40, 1);
                do{
                 if(SW1){
                    Glcd_fill(0x00);
                    Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);

                    radilica=radilica+1;
                 }
                 else if(SW5){
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
                  // Glcd_Rectangle(13, 49, 36, 57, 1);
                   radilica=0;
                   }
                 }


               }while(1);
              }
              else if(SW5){
                Glcd_fill(0x00);
                Glcd_Write_Text("       OSOVINA", 0, 1, 2);
                Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
                Glcd_Write_Text("    A1              A0",5,4,2);
              //  Glcd_Rectangle(7, 32, 38, 40, 1);
                //Glcd_Rectangle(72, 32, 103, 40, 1);
                do{
                 if(SW1){
                    Glcd_fill(0x00);
                    Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
                    osovina=osovina+1;
                 }
                 else if(SW0){
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
               //    Glcd_Rectangle(13, 49, 36, 57, 1);
                   osovina=0;
                   }
                 }


               }while(1);

              }
              */
           }while(1);

         }
         else if(SW6){
          Glcd_Fill(0x00);
          Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2);
          Glcd_Write_Text("   E0               A1    ",5,4,2);
          Glcd_Rectangle(5, 32, 34, 40, 1);
          Glcd_Rectangle(72, 32, 103, 40, 1);
         }

      }while(1);

}