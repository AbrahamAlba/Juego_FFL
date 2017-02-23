import ddf.minim.*;
 
Minim minim;
AudioPlayer musica1;
AudioPlayer musica2;
AudioPlayer musica3;

Lux Espada;
Lux Cetro;
Lux Lanza;
Lux Osc;

PImage introbg;
PImage titulo;
PImage carta;
PImage carta_;
int arma;
int jugador=0;
float oatk;
int odef=0;
int def=0;
int resultado=1;
int bg=0;
int pantalla=0;
int posX;
int posY;
float i=0;
int j=0;
int k=0;
int t=0;
String jugAnom;
int jugAatk;
int jugAvit;
int jugAmag;
String jugBnom;
int jugBatk;
int jugBvit;
int jugBmag;
PGraphics luz;
PGraphics oscuridad;
PGraphics espada;
PGraphics cetro;
PGraphics lanza;

//String ataques[]={};

void setup(){
size(800,800);
minim = new Minim(this);
  musica1 = minim.loadFile("intro.mp3");
  musica2 = minim.loadFile("menu.mp3");
  musica3 = minim.loadFile("juego.mp3");

introbg= loadImage("Fondo1.jpg");
titulo= loadImage("Titulo.png");
carta= loadImage("tarjeta1.png");
carta_= loadImage("tarjeta2.png");
Espada = new Lux("Espada Santa", 15, 4, 6);
Cetro = new Lux("Cetro Místico", 18, 2, 8);
Lanza = new Lux("Lanza de Fé", 10, 6, 4);
Osc = new Lux("Oscuridad",30,3,5);
//Arco = new Lux("Arco de Fé", 13, 6, 3);
//Mazo = new Lux("Mazo Divino", 8, 3, 8);
smooth();
luz = createGraphics(100,100);
oscuridad = createGraphics(100,100);
espada = createGraphics(140,221);
cetro = createGraphics(140,221);
lanza = createGraphics(140,221);
//arco = createGraphics(140,221);
//mazo = createGraphics(140,221);

}

void draw(){
  
  

if(pantalla==0)
{
  intro();
  musica1.play();
}

if(pantalla==1)
{
  musica1.pause();
  musica1.rewind();
  background(introbg);
  fill(255);
  text("SELECCIONA UN ARMA", 350, 150);
  seleccion();
  dibujar();
  musica2.play();
}

if(pantalla==2)
{
  musica2.pause();
  musica2.rewind();
  background(introbg);
  juego();
  dibujar();
  musica3.play();
}

if(pantalla==3)
{
  musica3.pause();
  musica3.rewind();
  background(introbg);
  fin();
}
}

class Lux{
String nom;
int vit;
int atk;
int mag;

Lux(String nom_, int vit_, int atk_, int mag_){
nom=nom_;
vit=vit_;
atk=atk_;
mag=mag_;
}

}

void dibujar(){
  textSize(12);
  if(k>1){
    if(arma==0 || arma==3){
  lanza.beginDraw();
    lanza.background(0,0,0,0);
    lanza.stroke(255);
    lanza.strokeWeight(1.5);
    lanza.noFill();
    lanza.line(70,38,64,57);
    lanza.line(64,57,70,65);
    lanza.line(70,65,76,57);
    lanza.line(76,57,70,38);
    lanza.line(67,61,67,68);
    lanza.line(67,68,62,68);
    lanza.line(62,68,62,73);
    lanza.line(62,73,67,73);
    lanza.line(67,73,67,80);
    lanza.line(67,80,73,80);
    lanza.line(73,80,73,73);
    lanza.line(73,73,78,73);
    lanza.line(78,73,78,68);
    lanza.line(78,68,73,68);
    lanza.line(73,68,73,61);
    lanza.rect(69,80,2,80);
    lanza.ellipse(70,165,10,10);
  lanza.endDraw();
  
  int posX=(width/2)+60;
  int posY=200;
    if(arma==3){
      
      fill(255);
    text(Lanza.nom, 500, 510);
    text("VIT", 500, 540);
    text(Lanza.vit, 550, 540);
    text("MAG", 500, 570);
    text(Lanza.mag, 550, 570);
    posX=(width/2-55);
      posY=500;
      jugAnom=Lanza.nom;
      jugAatk=Lanza.atk;
      jugAvit=Lanza.vit;
      jugAmag=Lanza.mag;
      //if(Lanza.vit==0);
        //resultado=0;
      
    }
  
  image(lanza,posX,posY);
    }
  
  if(arma==0 || arma==1){
  cetro.beginDraw();
    cetro.background(0,0,0,0);
    cetro.stroke(255);
    cetro.strokeWeight(1.5);
    cetro.noFill();
    cetro.ellipse(70,69,25,25);
    cetro.line(67,43,67,47);
    cetro.line(67,47,63,47);
    cetro.line(63,47,63,53);
    cetro.line(63,53,67,53);
    cetro.line(67,53,67,57);
    cetro.line(67,43,73,43);
    cetro.line(73,43,73,47);
    cetro.line(73,47,77,47);
    cetro.line(77,47,77,53);
    cetro.line(77,53,73,53);
    cetro.line(73,53,73,57);
    cetro.rect(69,83,2,62);
    cetro.rect(64,145,12,7);
    cetro.rect(66,152,8,6);
    cetro.rect(68,159,4,3);
  cetro.endDraw();
  
  int posX=161;
  int posY=200;
  
  if(arma==1){
      
      fill(255);
    text(Cetro.nom, 500, 510);
    text("VIT", 500, 540);
    text(Cetro.vit, 550, 540);
    text("MAG", 500, 570);
    text(Cetro.mag, 550, 570);
    posX=(width/2-55);
    posY=500;
      jugAnom=Cetro.nom;
      jugAatk=Cetro.atk;
      jugAvit=Cetro.vit;
      jugAmag=Cetro.mag;
      //if(Lanza.vit==0);
        //resultado=0;
       }
  
  image(cetro,posX,posY);
  }
  
  if(arma==0 || arma==2){
  espada.beginDraw();
    espada.background(0,0,0,0);
    espada.stroke(255);
    espada.strokeWeight(1.5);
    espada.noFill();
    espada.ellipse(94,134,11,11);
    espada.ellipse(46,134,11,11);
    espada.line(65,58,65,130);
    espada.line(75,58,75,130);
    espada.line(65,58,70,47);
    espada.line(75,58,70,47);
    espada.line(51,130,89,130);
    espada.line(51,130,51,136);
    espada.line(89,130,89,136);
    espada.line(67,136,67,158);
    espada.line(74,136,74,158);
    espada.line(67,158,56,158);
    espada.line(74,158,84,158);
    espada.line(56,164,67,164);
    espada.line(84,164,74,164);
    espada.line(67,164,67,177);
    espada.line(74,164,74,177);
    espada.line(67,177,74,177);
    espada.line(89,136,74,136);
    espada.line(51,136,67,136);
    espada.line(56,158,56,164);
    espada.line(84,158,84,164);
    
  espada.endDraw();
  
  int posX=(width/2)-89;
  int posY=195;
  
    if(arma==2){
      
      fill(255);
    text(Espada.nom, 500, 510);
    text("VIT", 500, 540);
    text(Espada.vit, 550, 540);
    text("MAG", 500, 570);
    text(Espada.mag, 550, 570);
    posX=(width/2-54);
    posY=490;
      jugAnom=Espada.nom;
      jugAatk=Espada.atk;
      jugAvit=Espada.vit;
      jugAmag=Espada.mag;
      //if(Lanza.vit==0);
        //resultado=0;
       }
  
  image(espada,posX,posY);
  }  
}
  
if(pantalla==2)
{
  oscuridad.beginDraw();
    oscuridad.background(0,0,0,0);
    oscuridad.noStroke();
    oscuridad.fill(random(100,200),0,0,150);
    oscuridad.ellipse(50,50,85,85);
    oscuridad.ellipse(50,50,70,70);
    oscuridad.fill(0,0,0,150);
    oscuridad.ellipse(50,50,65,65);
    oscuridad.ellipse(50,50,55,55);
  oscuridad.endDraw();
  
      jugBnom=Osc.nom;
      jugBatk=Osc.atk;
      jugBvit=Osc.vit;
      jugBmag=Osc.mag;
    
    image(oscuridad,367,130);
}

  
  float lc=random(20,30);
    pushMatrix();
    translate(-400+mouseX,-400+mouseY);
      pushMatrix();
        translate(width/2, height/2);
        rotate(radians(i));
        translate(-luz.width/2, -luz.height/2);
      luz.beginDraw();
        luz.background(0,0,0,0);
        luz.noStroke();
        luz.fill(213,243,255,random(200,255));
        luz.triangle(0,50,50,40,50,60);
        luz.triangle(100,50,50,40,50,60);
        luz.triangle(50,0,40,40,60,50);
        luz.triangle(50,100,40,40,60,50);
        luz.fill(213,243,255,random(100,150));
        luz.ellipse(50,50,85,85);
        luz.ellipse(50,50,70,70);
        luz.fill(33,123,211,random(100,255));
        luz.ellipse(50,50,55,55);
        luz.fill(135,225,255,200);
        luz.ellipse(50,50,45,45);
        luz.fill(255,255,255,200);
        luz.ellipse(50,50,lc,lc);
      luz.endDraw();
  
  image(luz,0,0);
  
  popMatrix();
  popMatrix();
  
  i+=0.5;

}


void intro(){
  t++;
  background(introbg);
    tint(255,t);
  image(titulo,0,0);
    tint(255,random(100,255));
 if(t>255)
 {
   fill(255, 255, 255,i++);
   textSize(16);
  text("Presiona ENTER.", 350, height/2);  
 }
 
if (keyPressed){
  if (key == ENTER)
    t=t+255;
    if(i>10) 
      if (pantalla == 0)
    {
      t=255;
    pantalla=1;
    i=0;
    }
}
}


void seleccion(){
  textSize(12);
    int cartaY=200;
    int cartaW=140;
    int cartaH=221;
  
  for(k=160;k<=500;k=k+150)
  {    
    image(carta,k,cartaY);
    stroke(255);
    fill(0,0,0,0);
    rect(k,cartaY,cartaW/*140*/,cartaH/*221*/);
  }
  
  if(mouseX>=(40+cartaW) && mouseX<=(40+(cartaW*2)) && mouseY >=cartaY && mouseY<=cartaY+cartaH){
    println(Cetro.nom);
    fill(255);
    text(Cetro.nom, 100, 500);
    text(Cetro.vit, 100, 530);
    text(Cetro.atk, 100, 560);
    text(Cetro.mag, 100, 590);
    text("VITALIDAD", 10, 530);
    text("ATAQUE", 10, 560);
    text("MAGIA", 10, 590);
    
   if (mousePressed && (mouseButton == LEFT)) {
     bg=122;  
     pantalla=2;
     arma=1;
   }
  }
  
  if(mouseX>=(50+(cartaW*2)) && mouseX<=(50+(cartaW*3)) && mouseY >=cartaY && mouseY<=cartaY+cartaH){
    println(Espada.nom);
    fill(255);
    text(Espada.nom, 100, 500);
    text(Espada.vit, 100, 530);
    text(Espada.atk, 100, 560);
    text(Espada.mag, 100, 590);
    text("VITALIDAD", 10, 530);
    text("ATAQUE", 10, 560);
    text("MAGIA", 10, 590);
   if (mousePressed && (mouseButton == LEFT)) {
     bg=122;  
     pantalla=2;
     arma=2;
   }
  }
  
  if(mouseX>=(60+(cartaW*3)) && mouseX<=(60+(cartaW*4)) && mouseY >=cartaY && mouseY<=cartaY+cartaH){
    println(Lanza.nom);
    fill(255);
    text(Lanza.nom, 100, 500);
    text(Lanza.vit, 100, 530);
    text(Lanza.atk, 100, 560);
    text(Lanza.mag, 100, 590);
    text("VITALIDAD", 10, 530);
    text("ATAQUE", 10, 560);
    text("MAGIA", 10, 590);
   if (mousePressed && (mouseButton == LEFT)) {
     bg=122;  
     pantalla=2;
     arma=3;
   }
  }
}


void juego(){
oatk = random(0,3);
image(carta,346,495);
image(carta_,346,75);
dibujar();
text("VIT",500,250);
text("MAG",500,280);
text(Osc.vit,540,250);
text(Osc.mag,540,280);
noFill();
//text(oatk,10,200);
rect(300,510,30,15);
text("ATK",303,523);
rect(300,550,30,15);
text("DEF",303,563);
rect(300,590,30,15);
text("MED",303,603);
if(mouseX>=300 && mouseX<=330 && mouseY >=510 && mouseY<=525){
      fill(255);
      text("Inflige daño.",100,523);
      
}
 if(mouseX>=300 && mouseX<=330 && mouseY >=550 && mouseY<=565){
text("Bloquea un ataque.",100,563);
 }
      if(mouseX>=300 && mouseX<=330 && mouseY >=590 && mouseY<=605){
    text("Recupera Magia y Vitaliad",100,603);
      } 
 
 }
      

void mouseClicked(){
    if(mouseX>=300 && mouseX<=330 && mouseY >=510 && mouseY<=525){
  {
    if(jugAmag==0){
    println("No puedes usar Ataque. Puntos de magia insuficientes.");
    }
    
    if(jugAmag>0){
        Lanza.mag = jugAmag-1;
        Espada.mag = jugAmag-2; 
        Cetro.mag = jugAmag-1; 
      }
    
    if(oatk>2 && oatk<=3 && odef==0 && jugAmag>0 && Osc.mag>=0 && Osc.mag <2){
    Osc.vit= Osc.vit - jugAatk;
    Osc.mag += (6-Osc.mag);
    if(Osc.vit<=0){
      pantalla=3;
      resultado=2;
      }
    println("Tu oponente meditó. Infligiste daño");
    }
    
    else
    
    if(oatk>0 && oatk<=1 && jugAmag>0 && Osc.mag>0){
    Osc.mag= Osc.mag-1;
    Osc.vit= Osc.vit-1;
    Lanza.vit = jugAvit-1;
    Espada.vit = jugAvit-1;
    Cetro.vit = jugAvit-1;
    if(Lanza.vit <=0 && Espada.vit <=0 && Cetro.vit <=0){
      pantalla=3;
      resultado=1;
      }
      
      if(Osc.vit<=0){
      pantalla=3;
      resultado=2;
      }
    println("Tu oponente Atacó.");
    println("Ambos reciben daño.");
    }
    
    else
    
    if(oatk>1 && oatk<=2 && jugAmag>0 && Osc.mag>0){
    odef=1;
    Osc.mag= Osc.mag-1;
    println("Tu oponente se defendió.");
    println("Tu oponente no recibió ningún daño.");
    odef=0;
    }

    }
    }
    
    if(mouseX>=300 && mouseX<=330 && mouseY >=550 && mouseY<=565){
    {
      if(jugAmag==0){
        println("No puedes usar Defensa. Puntos de magia insuficientes.");
      }
      
      if(jugAmag>0){
        Lanza.mag = jugAmag-2;
        Espada.mag = jugAmag-1; 
        Cetro.mag = jugAmag-2; 
    def=1;
      }
      
    if(oatk>=0 && oatk<=1 && jugAmag>0){
      Osc.mag = Osc.mag-1;
      println("Tu oponente atacó.");
      println("No recibiste ningún daño.");
      def=0;
    }
    
    else
    
    if(oatk>1 && oatk<=2 && jugAmag>0){
      Osc.mag = Osc.mag-2;
      odef=1;
      def=1;
      println("Tu oponente se defendió.");
      println("Ambos quedan intactos.");
      def=0;
      odef=0;
    }
    
    else
    
    if(oatk>2 && oatk<=3 && jugAmag>0 && Osc.mag<2){
      Osc.mag += (6 - Osc.mag);
      println("Tu oponente meditó.");
      println("Ambos quedan intactos");
      def=0;
    }
    
    }
    }
    
     if(mouseX>=300 && mouseX<=330 && mouseY >=590 && mouseY<=605){
       
       if(Lanza.mag>=4 && Espada.mag>=6 && Cetro.mag>=8 /*Lanza.vit==10 && Espada.vit==15 && Cetro.vit==18*/){
       println("No puedes usar Meditación. Salud y/o Magia llenos.");
       }
       
       if(oatk>=0 && oatk<=1 && Osc.mag>0 && Lanza.mag<4 && Espada.mag<6 && Cetro.mag<8){
         Lanza.vit = jugAvit - Osc.atk;
         Espada.vit = jugAvit - Osc.atk;
         Cetro.vit = jugAvit - Osc.atk;
         if(Lanza.vit <=0 && Espada.vit <=0 && Cetro.vit <=0){
          pantalla=3;
          resultado=1;
          }
         Lanza.mag += (4-jugAmag);
         Espada.mag += (6-jugAmag);
         Cetro.mag += (8-jugAmag);
         Lanza.vit += random(1,2);
         Espada.vit += random(1,2);
         Cetro.vit += random(1,2);
         println("Tu oponente atacó. Recibiste daño.");
         println("Mágia y Vitalidad recuperada");
         }
         
         else
         
         if(oatk>1 && oatk<=2 && Osc.mag>0 && Lanza.mag<4 && Espada.mag<6 && Cetro.mag<8){
         odef=1;
         Lanza.mag += (4-jugAmag);
         Espada.mag += (6-jugAmag);
         Cetro.mag += (8-jugAmag);
         Lanza.vit += random(1,2);
         Espada.vit += random(1,2);
         Cetro.vit += random(1,2);
         println("Tu oponente se defendió.");
         println("Mágia y Vitalidad recuperada");
         println("Ambos quedan intactos.");
         odef=0;
         }
         
         else
         
         if(oatk>2 && oatk<=3 && Lanza.mag<4 && Espada.mag<6 && Cetro.mag<8 && Osc.mag<2){
         Lanza.mag += (4-jugAmag);
         Espada.mag += (6-jugAmag);
         Cetro.mag += (8-jugAmag);
         Osc.mag += (6 - Osc.mag);
         Lanza.vit += random(1,2);
         Espada.vit += random(1,2);
         Cetro.vit += random(1,2);
         println("Tu oponente meditó.");
         println("Mágia y Vitalidad recuperada");
         odef=0;
         }

         
     }
    }
     


void fin(){
  
  arma=0;
  fill(255, 200, 100);
  if(resultado==1){
    textSize(32);
    text("¡PERDISTE!", width/2, height/2);

  }
  
  else
  if(resultado==2){
    textSize(32);
    text("¡GANASTE!", width/2, height/2);

  }
  
if (keyPressed){
  if (key == ' ')
    {
     Espada.vit=15;
     Espada.mag=6;
     Cetro.vit=18;
     Cetro.mag=8;
     Lanza.vit=10;
     Lanza.mag=4;
     Osc.vit=30;
     Osc.mag=5;
      i=0;
      j=0;
    pantalla=0;
    t=0;
    }
}
}