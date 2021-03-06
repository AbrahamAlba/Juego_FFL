import ddf.minim.*;
 
Minim minim;
AudioPlayer musica1;
AudioPlayer musica2;
AudioPlayer musica3;
AudioPlayer reaper1;
AudioPlayer reaper2;
AudioPlayer atkatk;
AudioPlayer atkmed;
AudioPlayer atkdef;
AudioPlayer victory;


Lux Espada;
Lux Cetro;
Lux Lanza;
Lux Osc;

PImage introbg;
PImage titulo;
PImage carta;
PImage carta_;
PImage reaper;
PImage dfc;
PImage med;
PImage logbox;
PImage esp;
PImage cet;
PImage lan;
PImage impact;
PImage impactr;
PImage medr;
PImage dfcr;
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
int r;
int s;
int t=0;
int u;
int v;
int w=600;
String jugAnom;
int jugAatk;
int jugAvit;
int jugAmag;
String jugBnom;
int jugBatk;
int jugBvit;
int jugBmag;
int textArma;
PGraphics luz;
PGraphics oscuridad;

//String ataques[]={};

void setup(){
size(800,800);
minim = new Minim(this);
  musica1 = minim.loadFile("intro.mp3");
  musica2 = minim.loadFile("menu.mp3");
  musica3 = minim.loadFile("juego.mp3");
  reaper1 = minim.loadFile("reaper_1.mp3");
  reaper2 = minim.loadFile("reaper_2.mp3");
  atkatk = minim.loadFile("attack_1.mp3");
  atkdef = minim.loadFile("attack_2.mp3");
  atkmed = minim.loadFile("attack_3.mp3");
  victory = minim.loadFile("victory.mp3");

introbg= loadImage("Fondo1.jpg");
titulo= loadImage("Titulo.png");
carta= loadImage("tarjeta1.png");
carta_= loadImage("tarjeta2.png");
reaper= loadImage("reaper.png");
dfc= loadImage("defensa.png");
med= loadImage("meditacion.png");
logbox= loadImage("logbox.png");
esp= loadImage("espada.png");
cet= loadImage("cetro.png");
lan= loadImage("lanza.png");
impact = loadImage("impact.png");
impactr= loadImage("impact_reaper.png");
medr= loadImage("med_reaper.png");
dfcr= loadImage("def_reaper.png");
Espada = new Lux("Espada Santa", 15, 3, 6);                                              ///////////////ATRIBUTOS DE LAS ARMAS//////////////////////
Cetro = new Lux("Cetro Místico", 18, 2, 8);
Lanza = new Lux("Lanza de Fé", 9, 6, 3);
Osc = new Lux("Oscuridad",30,3,6);
//Arco = new Lux("Arco de Fé", 13, 6, 3);
//Mazo = new Lux("Mazo Divino", 8, 3, 8);
smooth();
luz = createGraphics(100,100);
oscuridad = createGraphics(100,100);

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
  reaper1.play();
  dibujar();
  
  //////////////////////////////////////////////////////////////////////////////////Efectos//////////////////////////////////////////////////////////////////
  
  if(textArma==1){
  image(medr,345,80);
  atkmed.play();
  //atkmed.rewind();
  }
  if(textArma==2){
  image(impactr,375,v=v+20);
  atkatk.play();
  //atkatk.rewind();
  }
  if(textArma==3){
  image(dfcr,345,80);
  atkdef.play();
  }
  if(textArma==4){
    image(dfc,345,(width/2)+90);
  image(impactr,375,v=v+20);
  atkdef.play();
  }
  if(textArma==5){
    image(dfc,345,(width/2)+90);
  image(dfcr,345,80);
  atkdef.play();
  }
  if(textArma==6){
    image(dfc,345,(width/2)+90);
  image(medr,345,80);
  atkdef.play();
  }
  if(textArma==7){
         image(med,345,(width/2)+90);
  image(impactr,375,v=v+20);
  atkmed.play();
  }
  if(textArma==8){
         image(med,345,(width/2)+90);
  image(dfcr,345,80);
  atkdef.play();
  }
  if(textArma==9){
         image(med,345,(width/2)+90);
  image(medr,345,80);
  }
  musica3.play();
}

if(pantalla==3)
{
  reaper1.pause();
  reaper1.rewind();
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
  
  image(lan,posX,posY);
    }
  
  if(arma==0 || arma==1){
  
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
  
  image(cet,posX,posY);
  }
  
  if(arma==0 || arma==2){
  
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
  
  image(esp,posX,posY);
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
  
  //image(luz,0,0);
  
  popMatrix();
  popMatrix();
  
  i+=0.5;

}


void intro(){
  t++;
  background(introbg);
    tint(255,t);
  image(titulo,0,0);
    //tint(255,random(100,255));
 if(t>255)
 {
   fill(255, 255, 255,i++);
   textSize(16);
  text("Presiona ENTER.", 350, height/2);  
 }
 
if (keyPressed){
  if (key == ENTER){
    t=t+255;
    
    if(i>=100) 
      if (pantalla == 0)
    {
      t=255;
    pantalla=1;
    i=0;
    }
    }
}
}


void seleccion(){
  textSize(12);
    int cartaY=200;
    int cartaW=140;
    int cartaH=221;
    text("Tu objetivo es derrotar a La Muerte, para derrotarla, da click en los botones ATK, DEF y MED.", 100, 700);
    text("Cada ataque o defensa que realices, necesita puntos de Magia.", 100, 720);
    text("Utiliza MED para recobrar puntos de Magia, y ganar un bono extra de Vitalidad.", 100, 740);
  
  for(k=160;k<=500;k=k+150)
  {    
    image(carta,k,cartaY);
    stroke(255);
    fill(0,0,0,0);
    //rect(k,cartaY,cartaW/*140*/,cartaH/*221*/);
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
  u++;
oatk = random(0,3);
image(carta,346,495);
image(carta_,346,75);
image(logbox,0,(height/2)-40);
dibujar();
image(reaper,225,20);
text("VIT",500,250);
text("MAG",500,280);
text(Osc.vit,540,250);
text(Osc.mag,540,280);
noFill();
rect(300,510,30,15);
text("ATK",303,523);
rect(300,550,30,15);
text("DEF",303,563);
rect(300,590,30,15);
text("MED",303,603);


//SECCIÓN DE TEXTO QUE APARECE CUANDO SE REALIZA UNA ACCIÓN

 if(mouseX>=300 && mouseX<=330 && mouseY >=510 && mouseY<=525){
    if(Lanza.mag<=0 && arma==3){
    text("No puedes usar Ataque. Puntos de magia insuficientes.",10,(height/2)+40);
    }
    
    if(Espada.mag<=1 && arma==2){
    text("No puedes usar Ataque. Puntos de magia insuficientes.",10,(height/2)+40);
    }
    
    if(Cetro.mag<=0 && arma==1){
    text("No puedes usar Ataque. Puntos de magia insuficientes.",10,(height/2)+40);
    }
  }
  
  if(mouseX>=300 && mouseX<=330 && mouseY >=550 && mouseY<=565){
      if(Lanza.mag<=1 && arma==3){
        text("No puedes usar Defensa. Puntos de magia insuficientes.",10,(height/2)+40);
      }
      
      if(Espada.mag<=0 && arma==2){
        text("No puedes usar Defensa. Puntos de magia insuficientes.",10,(height/2)+40);
      }
      
      if(Cetro.mag<=1 && arma==1){
        text("No puedes usar Defensa. Puntos de magia insuficientes.",10,(height/2)+40);
      }
  }
  
  if(mouseX>=300 && mouseX<=330 && mouseY >=590 && mouseY<=605){
    
       if(Lanza.mag>0 && arma==3 /*Lanza.vit==10 && Espada.vit==15 && Cetro.vit==18*/){
       text("No puedes usar Meditación. Magia llena.",10,(height/2)+40);
       }
       
       if(Espada.mag>0 && arma==2 /*Lanza.vit==10 && Espada.vit==15 && Cetro.vit==18*/){
       text("No puedes usar Meditación. Magia llena.",10,(height/2)+40);
       }
       
       if(Cetro.mag>0 && arma==1 /*Lanza.vit==10 && Espada.vit==15 && Cetro.vit==18*/){
       text("No puedes usar Meditación. Magia llena.",10,(height/2)+40);
       }
  }
  
     if(textArma==1){
       text("Tu oponente meditó.",10,height/2);
       text("Infligiste daño",10,(height/2)+20);
       image(impact,375,w=w-20);
          if(w<=160){
           w=160;
         }
         }
   
     if(textArma==2){
     text("Tu oponente Atacó.",10,height/2);
     text("Ambos reciben daño.",10,(height/2)+20);
     image(impact,375,w=w-20);
     if(w<=160){
       w=160;
     }
     }
   
     if(textArma==3){
     text("Tu oponente se defendió.",10,height/2);
     text("Tu oponente no recibió ningún daño.",10,(height/2)+20);
     image(impact,375,w=w-20);
        if(w<=160){
       w=160;
     }
     }
     
     if(textArma==4){
     text("Tu oponente atacó.",10,height/2);
     text("No recibiste ningún daño.",10,(height/2)+20);
     }
     
     if(textArma==5){
      text("Tu oponente se defendió.",10,height/2);
      text("Ambos quedan intactos.",10,(height/2)+20);
     }
     
     if(textArma==6){
     text("Tu oponente meditó.",10,height/2);
     text("Ambos quedan intactos",10,(height/2)+20);
     }
     
     if(textArma==7){
     text("Tu oponente atacó. Recibiste daño.",10,height/2);
     text("Mágia y Vitalidad recuperada",10,(height/2)+20);
     }
     
     if(textArma==8){
     text("Tu oponente se defendió.",10,(height/2)-20);
     text("Mágia y Vitalidad recuperada",10,height/2);
     text("Ambos quedan intactos.",10,(height/2)+20);
     }
     
     if(textArma==9){
     text("Tu oponente meditó.",10,height/2);
     text("Mágia y Vitalidad recuperada",10,(height/2)+20);
     }
   
   

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
      
      //text(u,10,20);
      //text(s,20,100);
      //text(r,20,120);
 }
 
 
 /////////
 //////////////////////////////////////////////////////////////////////////////////////////////////////
 /////////
      

void mouseClicked(){
  
  //CUANDO SELECCIONAS EL BOTÓN DE ATAQUE
    if(mouseX>=300 && mouseX<=330 && mouseY >=510 && mouseY<=525 && u>=90 && s==0 && arma==1){
      
      ///////////////ARMA CETRO///////////////////
      
      atkdef.pause();
           atkatk.pause();
           atkmed.pause();
           atkdef.rewind();
           atkatk.rewind();
           atkmed.rewind();
      
      if(Cetro.mag>0){
        
        if(oatk>1.5 && oatk<=3){
          w=600;
          u=0;
          
          textArma=3;
          
          Cetro.mag = Cetro.mag - 1;
          Osc.mag = Osc.mag -2;
          
          
            if(Osc.mag<=1){
              
              u=0;
              textArma=1;
              Osc.mag = 6;
              Osc.vit = Osc.vit + 1;
              Osc.vit = Osc.vit - Cetro.atk;
              
              if(Osc.vit<=0){
                    pantalla=3;
                    resultado=2;
                  }
          }
          
         }
        
        if(oatk>=0 && oatk<=1.5){
          w=600;
          v=160;
          u=0;
          
          textArma=2;
            
          Cetro.mag = Cetro.mag - 1;
          Osc.mag = Osc.mag - 1;
          Osc.vit = Osc.vit - 1;
          Cetro.vit = Cetro.vit - 1;
          
          if(Osc.vit<=0){
                    pantalla=3;
                    resultado=2;
                  }
                  
                  if(Cetro.vit<=0){
      pantalla=3;
      resultado=1;
    }
          
          if(Osc.mag<=1){
            
              u=0;
              textArma=1;
              Osc.mag = 6;
              Osc.vit = Osc.vit - Cetro.atk;
              
              if(Osc.vit<=0){
                    pantalla=3;
                    resultado=2;
                  }
          }
        }
        
      }
    
    else
    
    if(Cetro.mag<=0){
    u=0;
    s=1;
    }
    
    }
    
  //CUANDO SELECCIONAS EL BOTON DE DEFENSA  
    if(mouseX>=300 && mouseX<=330 && mouseY >=550 && mouseY<=565 && u>=90 && r==0 && arma==1){
      ///////////////ARMA CETRO///////////////////
      
      atkdef.pause();
           atkatk.pause();
           atkmed.pause();
           atkdef.rewind();
           atkatk.rewind();
           atkmed.rewind();
      
      
      if(Cetro.mag>1){
        
        if(oatk>1.5 && oatk<=3){
          u=0;
          v=160;
          w=600;
          textArma=4;
          
          Cetro.mag = Cetro.mag - 2;
          Osc.mag = Osc.mag -1;
          
            if(Osc.mag<=0){
            
              u=0;
              textArma=6;
              Osc.mag = 6;
          }
          
         }
        
        if(oatk>=0 && oatk<=1.5){
          u=0;
          
          textArma=5;
            
          Cetro.mag = Cetro.mag - 2;
          Osc.mag = Osc.mag - 2;
          
          if(Osc.mag<=1){
            
              u=0;
              textArma=6;
              Osc.mag = 6;
          }
        }
        
      }
    
    else
    
    if(Cetro.mag<=1){
    u=0;
    r=1;
    }
    }
    
    
    
  //CUANDO SELECCIONAS EL BOTON DE MEDITAR  
     if(mouseX>=300 && mouseX<=330 && mouseY >=590 && mouseY<=605 && u>=90 && arma==1){
       
       atkdef.pause();
           atkatk.pause();
           atkmed.pause();
           atkdef.rewind();
           atkatk.rewind();
           atkmed.rewind();
       
      if(Cetro.mag<8){
      u=0;
      r=0;
      s=0;
      if(oatk>=0 && oatk<=1.5){
        v=160;
        textArma=7;
        
        Osc.mag = Osc.mag - 1;
        Cetro.vit = Cetro.vit - Osc.atk;
        Cetro.vit = Cetro.vit + 1;
        Cetro.mag = 8;
        
        if(Cetro.vit<=0){
      pantalla=3;
      resultado=1;
    }
        
        if(Osc.mag<=0){
          
              u=0;
              textArma=9;
              Osc.mag = 6;
              Cetro.vit = Cetro.vit + 2;
          }
      }
      
      if(oatk>1.5 && oatk<=3){
        u=0;
        textArma=8;
        Osc.mag = Osc.mag - 2;
        Cetro.mag=8;
        Cetro.vit = Cetro.vit + 2;
        
        if(Osc.mag<=0){
          
              u=0;
              textArma=9;
              Osc.mag = 6;
              Cetro.vit = Cetro.vit + 2;
          }
      }
      
      }
     }
     
     
     ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 
     else
     
     //CUANDO SELECCIONAS EL BOTÓN DE ATAQUE
    if(mouseX>=300 && mouseX<=330 && mouseY >=510 && mouseY<=525 && u>=90 && s==0 && arma==2){
      
      ///////////////ARMA ESPADA///////////////////
      
      atkdef.pause();
           atkatk.pause();
           atkmed.pause();
           atkdef.rewind();
           atkatk.rewind();
           atkmed.rewind();
      
      if(Espada.mag>1){
        
        if(oatk>1.5 && oatk<=3){
          w=600;
          u=0;
          
          textArma=3;
          
          Espada.mag = Espada.mag -2;
          Osc.mag = Osc.mag -2;
          
            if(Osc.mag<=1){
              
              u=0;
              textArma=1;
              Osc.mag = 6;
              Osc.vit = Osc.vit + 1;
              Osc.vit = Osc.vit - Espada.atk;
              
              
              
                  if(Osc.vit<=0){
                    pantalla=3;
                    resultado=2;
                  }
          }
          
         }
        
        if(oatk>=0 && oatk<=1.5){
          w=600;
          v=160;
          u=0;
          
          textArma=2;
            
          Espada.mag = Espada.mag - 2;
          Osc.mag = Osc.mag - 1;
          Osc.vit = Osc.vit - 1;
          Espada.vit = Espada.vit - 1;
          
                   if(Osc.vit<=0){
                    pantalla=3;
                    resultado=2;
                  }
                  
                  if(Espada.vit<=0){
      pantalla=3;
      resultado=2;
    }
          
          if(Osc.mag<=1){
            
              u=0;
              textArma=1;
              Osc.mag = 6;
              Osc.vit = Osc.vit - Espada.atk;
              
                  if(Osc.vit<=0){
                    pantalla=3;
                    resultado=2;
                  }
          }
        }
        
      }
    }

    
  //CUANDO SELECCIONAS EL BOTON DE DEFENSA  
    if(mouseX>=300 && mouseX<=330 && mouseY >=550 && mouseY<=565 && u>=90 && r==0 && arma==2){
      ///////////////ARMA ESPADA///////////////////
      
      atkdef.pause();
           atkatk.pause();
           atkmed.pause();
           atkdef.rewind();
           atkatk.rewind();
           atkmed.rewind();
      
      
      if(Espada.mag>0){
        
        if(oatk>1.5 && oatk<=3){
          u=0;
          v=160;
          w=600;
          textArma=4;
          
          Espada.mag = Espada.mag - 1;
          Osc.mag = Osc.mag -1;
          
            if(Osc.mag<=0){
            
              u=0;
              textArma=6;
              Osc.mag = 6;
          }
          
         }
        
        if(oatk>=0 && oatk<=1.5){
          u=0;
          
          textArma=5;
            
          Espada.mag = Espada.mag - 1;
          Osc.mag = Osc.mag - 2;
          
          if(Osc.mag<=1){
            
              u=0;
              textArma=6;
              Osc.mag = 6;
          }
        }
        
      }
    
    else
    
    if(Espada.mag<=0){
    u=0;
    r=1;
    }
    }
    
    
    
  //CUANDO SELECCIONAS EL BOTON DE MEDITAR  
     if(mouseX>=300 && mouseX<=330 && mouseY >=590 && mouseY<=605 && u>=90 && arma==2){
       
       atkdef.pause();
           atkatk.pause();
           atkmed.pause();
           atkdef.rewind();
           atkatk.rewind();
           atkmed.rewind();
       
      if(Espada.mag<6){
      u=0;
      r=0;
      s=0;
      if(oatk>=0 && oatk<=1.5){
        v=160;
        textArma=7;
        
        Osc.mag = Osc.mag - 1;
        Espada.vit = Espada.vit - Osc.atk;
        Espada.vit = Espada.vit + 1;
        Espada.mag = 6;
        
        if(Espada.vit<=0){
      pantalla=3;
      resultado=1;
    }
        
        if(Osc.mag<=0){
          
              u=0;
              textArma=9;
              Osc.mag = 6;
              Espada.vit = Espada.vit + 2;
          }
      }
      
      if(oatk>1.5 && oatk<=3){
        u=0;
        textArma=8;
        Osc.mag = Osc.mag - 2;
        Espada.mag=6;
        Espada.vit = Espada.vit + 2;
        
        if(Osc.mag<=0){
          
              u=0;
              textArma=9;
              Osc.mag = 6;
              Espada.vit = Espada.vit + 2;
          }
      }
      
      }
     }
     
     ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
     
          else
     
     //CUANDO SELECCIONAS EL BOTÓN DE ATAQUE
    if(mouseX>=300 && mouseX<=330 && mouseY >=510 && mouseY<=525 && u>=90 && s==0 && arma==3){
      
      ///////////////ARMA LANZA///////////////////
      
      atkdef.pause();
           atkatk.pause();
           atkmed.pause();
           atkdef.rewind();
           atkatk.rewind();
           atkmed.rewind();
      
      if(Lanza.mag>0){
        
        if(oatk>1.5 && oatk<=3){
          w=600;
          u=0;
          
          textArma=3;
          
          Lanza.mag = Lanza.mag -1;
          Osc.mag = Osc.mag -2;
          
            if(Osc.mag<=1){
              
              u=0;
              textArma=1;
              Osc.mag = 6;
              Osc.vit = Osc.vit + 1;
              Osc.vit = Osc.vit - Lanza.atk;
              
              if(Osc.vit<=0){
                    pantalla=3;
                    resultado=2;
                  }
                  
                  if(Lanza.vit<=0){
      pantalla=3;
      resultado=1;
    }
          }
          
         }
        
        if(oatk>=0 && oatk<=1.5){
          w=600;
          v=160;
          u=0;
          
          textArma=2;
            
          Lanza.mag = Lanza.mag - 1;
          Osc.mag = Osc.mag - 1;
          Osc.vit = Osc.vit - 1;
          Lanza.vit = Lanza.vit - 1;
          
          if(Osc.vit<=0){
                    pantalla=3;
                    resultado=2;
                  }
          
          if(Osc.mag<=1){
            
              u=0;
              textArma=1;
              Osc.mag = 6;
              Osc.vit = Osc.vit + 1;
              Osc.vit = Osc.vit - Lanza.atk;
              
              if(Osc.vit<=0){
                    pantalla=3;
                    resultado=2;
                  }
          }
        }
        
      }
    
    else
    
    if(Lanza.mag<=0){
    u=0;
    s=1;
    }
    }
    
  //CUANDO SELECCIONAS EL BOTON DE DEFENSA  
    if(mouseX>=300 && mouseX<=330 && mouseY >=550 && mouseY<=565 && u>=90 && r==0 && arma==3){
      ///////////////ARMA LANZA///////////////////
      
      atkdef.pause();
           atkatk.pause();
           atkmed.pause();
           atkdef.rewind();
           atkatk.rewind();
           atkmed.rewind();
      
      
      if(Lanza.mag>1){
        
        if(oatk>1.5 && oatk<=3){
          u=0;
          v=160;
          w=600;
          textArma=4;
          
          Lanza.mag = Lanza.mag - 2;
          Osc.mag = Osc.mag -1;
          
            if(Osc.mag<=0){
            
              u=0;
              textArma=6;
              Osc.mag = 6;
          }
          
         }
        
        if(oatk>=0 && oatk<=1.5){
          u=0;
          
          textArma=5;
            
          Lanza.mag = Lanza.mag - 2;
          Osc.mag = Osc.mag - 2;
          
          if(Osc.mag<=1){
            
              u=0;
              textArma=6;
              Osc.mag = 6;
          }
        }
        
      }
    
    else
    
    if(Lanza.mag<=1){
    u=0;
    r=1;
    }
    }
    
    
    
  //CUANDO SELECCIONAS EL BOTON DE MEDITAR  
     if(mouseX>=300 && mouseX<=330 && mouseY >=590 && mouseY<=605 && u>=90 && arma==3){
       
       atkdef.pause();
           atkatk.pause();
           atkmed.pause();
           atkdef.rewind();
           atkatk.rewind();
           atkmed.rewind();
       
      if(Lanza.mag<4){
      u=0;
      r=0;
      s=0;
      if(oatk>=0 && oatk<=1.5){
        v=160;
        textArma=7;
        
        Osc.mag = Osc.mag - 1;
        Lanza.vit = Lanza.vit - Osc.atk;
        Lanza.vit = Lanza.vit + 1;
        Lanza.mag = 4;
        
        if(Lanza.vit<=0){
      pantalla=3;
      resultado=1;
    }
        
        if(Osc.mag<=0){
          
              u=0;
              textArma=9;
              Osc.mag = 6;
              Lanza.vit = Lanza.vit + 2;
          }
      }
      
      if(oatk>1.5 && oatk<=3){
        u=0;
        textArma=8;
        Osc.mag = Osc.mag - 2;
        Lanza.mag=4;
        Lanza.vit = Lanza.vit + 2;
        
        if(Osc.mag<=0){
          
              u=0;
              textArma=9;
              Osc.mag = 6;
              Lanza.vit = Lanza.vit + 2;
          }
      }
      
      }
     }
     
}
     


void fin(){
  
  arma=0;
  fill(255, 200, 100);
  if(resultado==1){
    reaper2.play();
    textSize(32);
    text("¡PERDISTE!", (width/2)-60, height/2);
    textSize(22);
    text("Presiona la barra espaciadora para reiniciar.", 130, height/2+40);

  }
  
  else
  if(resultado==2){
    victory.play();
    textSize(32);
    text("¡GANASTE!", (width/2)-60, height/2);
    textSize(22);
    text("Presiona la barra espaciadora para reiniciar.", 130, height/2+40);

  }
  
if (keyPressed){
  if (key == ' ')
    {
      victory.pause();
      victory.rewind();
      reaper2.pause();
      reaper2.rewind();
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
      u=0;
      r=0;
      s=0;
    pantalla=0;
    t=0;
    textArma=0;
    }
}
}