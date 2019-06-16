#define SW7 PORTE.F0           //   Definisanje prekidaèa koji æe se
#define SW6 PORTE.F1           //   koristiti u realizaciji
#define SW3 PORTA.F3
#define SW2 PORTA.F2
#define SW1 PORTA.F1
#define SW0 PORTA.F0
unsigned int agregat,motor,osovina,radilica;//Definisanje promenljivih za stanje proizvoda
// Konekcije za GLCD modul
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
  ADCON1 = 0x0F;                 // Konvertuje analogne pinove u digitalne
  ADON_bit = 0;                  // Gasi AD konvertor
  CMCON  = 0x07;
  agregat=5;
  motor=2;
  osovina=4;
  radilica=6;
  
  Glcd_Init();        // Inicijalizuje GLCD
  Glcd_Fill(0x00);   // Brise sve sa GLCD-a

  Glcd_Set_Font(System3x5, 3, 5, 32);  //Definisanje fonta teksta
  Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2); //Funkcija koja ispisuje
  Glcd_Write_Text("   E0               A1    ",5,4,2);  // na ekranu

      do{   // U sluèaju pritiska tastera E0 ispisuje se
              //uputstvo za upotrebu, a ako je taster A1 pritisnut onda glavni meni
      if(SW7){//Petlja koja ispisuje uputstvo
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
         else if(SW1){ //  Petlja koja ispisuje glavni meni

          Glcd_fill(0x00);
           Glcd_Write_Text("KORISNICKI MENI", 0, 0, 2);
           Glcd_Write_Text("POGONSKI AGREGAT            A0", 0, 1, 2);
           Glcd_Write_Text("DVOTAKTNI DIZEL MOTOR       E1", 0, 3, 2);
           Glcd_Write_Text("RADILICA                    E0", 0, 5, 2);
           Glcd_Write_Text("OSOVINA                     E2", 0, 7, 2);
           do{
              if(SW0){    //U sluèaju pritiska tastera A0, ispisuje opcija za
              //proizvod pogonski agregat
               Glcd_fill(0x00);
               Glcd_Write_Text("        POGONSKI AGREGAT", 0, 1, 2);
               Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
               Glcd_Write_Text("    A1              E2",5,4,2);

               do{

                 if(SW1){   //Petlja koja proizvodi proizvod i dodaje ga na stanje
                    Glcd_fill(0x00);
                    Glcd_Write_Text("PROIZVOD JE PROIZVEDEN",5,3,2);
                    agregat=agregat +1;
                 }
                 else if(SW5){ //Petlja koja prvo proverava da li je proizvod na stanju
                  //pa ga preuzima sa stanja
                 if(agregat>0){
                    Glcd_fill(0x00);
                    Glcd_Write_Text("PROIZVOD JE PREUZET",5,3,2);
                    agregat=agregat-1;
                   }
                   else{ //U sluèaju da proizvoda nema na stanju, to se ispisuje na ekranu
                   Glcd_fill(0x00);
                   Glcd_Write_Text("PROIZVODA NEMA NA STANJU",5,3,2);
                   Glcd_Write_Text("PROIZVEDI",5,5,2);
                   Glcd_Write_Text("    A1  ",5,6,2);
                   agregat=0;
                   }
                 }

                 
               }while(1);
              }

              else if (SW6){
                Glcd_fill(0x00);
                Glcd_Write_Text("       DVOTAKTNI DIZEL MOTOR", 0, 1, 2);
                Glcd_Write_Text("PROIZVEDI        PREUZMI",5,3,2);
                Glcd_Write_Text("    A1              E2",5,4,2);
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
                   osovina=0;
                   }
                 }


               }while(1);

              }
           }while(1);

         }
         else if(SW6){
          Glcd_Fill(0x00);
          Glcd_Write_Text("UPUTSVO        GLAVNI MENI",5,3,2);
          Glcd_Write_Text("   E0               A1    ",5,4,2);
         }
      }while(1);

}