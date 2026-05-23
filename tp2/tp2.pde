PFont comezar, himym;
PImage poster, fondo, fondo2, fondo3, hijos, robin, lily, barney, marshall, ted, tedyrobin, fondo4,fondoBoda,fin;
float posXposter, posYposter, posXBotonI, posYBotonI, p2X, p2Y, p2Alto, p2Ancho, yBarney, xBarney, xMarshal, yMarshal, anchoMarshall, altoMarshall;
float posXTed, posYTed, rectX1, rectX2, rectX3, rectY, tedAncho, tedAlto, posXRobin, yLily, xLily, opacidad, tamTexto, posYtexto,posXFondo,posYFondo;
int tamXBotonI, tamYBotonI;
int vel, posXtexto;
int contador, estado;
boolean hizoClic;
String comenzar=("COMENZAR");
String sinopsis=("How I Met Your Mother es una comedia estadounidense. Ted Mosby,\nen el futuro, le cuenta a sus hijos la larga historia de cómo conoció\na su madre.A través de recuerdos llenos de humor, romances y drama,\nla serie muestra las aventuras de Ted y su grupo de amigos\nen Nueva York: Marshall, Lily, Barney y Robin.");
String tedTexto=("El es Ted Mosby\nProtagonista y \nnarrador de la serie");
String robinTexto=("Ella es Robin Scherbatsky\nProtagonista e interes\nromantico de Ted");
String relacionTR=("Su relacion está marcada por el amor, la amistad y las diferencias\nen sus metas de vida. Aunque tienen muchas idas y vueltas,\nsiempre mantienen una conexión muy fuerte.");
float opacidadMapeada;
String marshallTexto = "Marshall Eriksen ";
String lilyTexto = "Lily Aldrey";
String barneyTexto = "Barney Stinson";


void setup(){
size(640,480);
background(255);
contador=0;
estado=1;
fondo=loadImage("fondo.jpg");
fondo2=loadImage("fondo2.jpg");
fondo3=loadImage("fondo3.jpg");
fondo4=loadImage("fondo4.png");
poster = loadImage ("poster.png");
fondoBoda=loadImage("marshallylily.jpg");
fin=loadImage("p4.jpg");
posXposter=0;
posYposter=480;
posXFondo=0;
posYFondo=0;
 tamXBotonI= 200;
  tamYBotonI=80;
  posXBotonI= width/2 - tamXBotonI/2;
  posYBotonI = height - height/5 - tamYBotonI/2;
vel=10;
comezar=loadFont("BookmanOS.vlw");
hijos=loadImage("hijos.jpg");
p2X=-208;
p2Y=0;
p2Alto=0;
p2Ancho=0;
himym=loadFont("Trebuchet.vlw");
rectX1=-630;
rectX2=0;
rectX3=0;
rectY=50;
barney=loadImage("barney.png");
robin=loadImage("robin.png");
ted=loadImage("ted.png");
lily=loadImage("lily.png");
marshall=loadImage("marshall.png");
posXTed=0;
posYTed=480;
tedAncho=0;
tedAlto=0;
posXRobin=0;
tedyrobin=loadImage("tedyrobin.jpg");
xMarshal=-300;
yMarshal=100;
yBarney=100;
xBarney=640;
yLily=480;
xLily=100;
opacidad=0;
opacidadMapeada=0;
posYtexto=80;
posXtexto=0;


}

 void mousePressed(){
     if(mouseX >= 230 && mouseX <= 419 && mouseY >= 400 && mouseY <= 440) {
       fill(255,0,0); 
       hizoClic = true;
     }
  println(mouseX, mouseY); 
}


  
void draw(){

  if (estado==1){
  if(posYposter > 0) {
  posYposter=posYposter - vel;
    hizoClic = false;
    image(poster,posXposter,posYposter,640,360);
     noStroke();
     rect(0,(posYposter+360),640,509);
    fill(255);
  }
  
  if(posYposter == 0){
     if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI + 30 && mouseY < posYBotonI + tamYBotonI + 30) {
       fill(#FFFF93);
       rect(220,380,200,70);
   fill(255,0,0);
   textFont(comezar,30);
   text(comenzar,230,420);
    } else {
      fill(255,0,0);
      rect(220,380,200,70);
   fill(#FFFF93);
   textFont(comezar,30);
   text(comenzar,230,420); 
    }
  
  }
  if (hizoClic && estado==1){
    contador++;
      if (contador>50) {
        contador=0;
        estado=2;
      }
 }

}


  //pantalla 2
  if (estado==2){
    hizoClic=false;
    contador++;
    image(fondo,0,0,640,480); 
  if (contador>=0 && contador<900){
    p2Alto=197;
    p2Ancho=274;
     p2Y=250;
    if (p2X<310){
      p2X=p2X + 4;
    }
    image(hijos,p2X,p2Y,p2Ancho,p2Alto);
      if (rectX1<5){
      rectX1=rectX1 + 6;
    }
    fill(0,220,0,200);
    rect(rectX1,53,630,150);
   
    fill(0);
    textFont(himym,19.5);
    text(sinopsis,rectX1,90);
 }
   
    
   if (contador>850 && contador <950){
   if (p2X>310){
      p2X=p2X + 4;
    }
image(hijos,p2X,p2Y,p2Ancho,p2Alto);
 if (rectX1>5){
      rectX1=rectX1 + 6;
    }
    fill(0,220,0,200);
    rect(rectX1,53,630,150);
    fill(0);
    textFont(himym,19.5);
     text(sinopsis,rectX1,90);
     if (contador>940) {
        estado=3;
        contador=0;
      }
   }
}


if (estado==3){
  contador++;
  image(fondo2,0,0,640,480); 
if (contador>0 && contador<490){
posXTed=20;
posXRobin=280;
tedAncho=333;
tedAlto=476;
p2Y=100;
if (posYTed>150){
  posYTed=posYTed - 5;
}if (contador>400){
   posXTed=map(contador,400,500,20,-480);
   posXRobin=map(contador,400,500,280,800);
   p2Y=map(contador,400,500,100,-480);
   posYtexto=map(contador,400,500,100,-480);
}
image(ted,posXTed,posYTed,tedAncho,tedAlto);
image(robin,posXRobin,posYTed,tedAncho,tedAlto);

opacidadMapeada=map(contador,0,250,0,100);
fill(200,0,0,opacidadMapeada);
ellipse(320,p2Y,620,150);
opacidad=map(contador,0,100,0,255);
fill(0,opacidad);
textFont(himym,20);
text(tedTexto,80,posYtexto);
text(robinTexto,360,posYtexto);


if (contador>450) {
      estado=4;
      contador=0;
    }
}
 
}

//pantalla 4
if (estado==4){
  contador++;
  image(fondo,0,0,640,480); 
if (contador>0 && contador<500){
  if(contador < 250)
  {
    opacidad = contador * 3;
    tint(255,opacidad);
    image(tedyrobin,100,200,440,243);
  }
  else
  {
    opacidad -= 3;
    tint(255,opacidad);
    image(tedyrobin,100,200,440,243);
  }

tint(255,150);
fill(200,0,0,150);
rect(43,54,550,100);
fill(0);
if(contador < 50) {
tamTexto=map(contador,0,50,0,18);
}
if (contador>450){
  tamTexto=map(contador,450,500,18,0);
}
  textFont(himym,tamTexto);

text(relacionTR,57,85);
}

if (contador>500){
  estado=5;
  contador=0;
  tamTexto = 18;
  rectX1=100;
  rectX2=250;
  rectX3=450;
  tint(255,255);
}
}

 //pantalla 5
 if (estado==5){
   contador++;
   image(fondo3,posXposter,posYposter,640,480); 
  if (contador>0 && contador<400){
    //MARSHALL
    p2Alto=500;
    p2Ancho=300;
 
    if (xMarshal<5){
      xMarshal=xMarshal + 4;
    }
    image(marshall,xMarshal,yMarshal,p2Ancho,p2Alto);
  if (contador>300){
   yMarshal=yMarshal + 5; 
    yBarney=yBarney + 5; 
  xLily=xLily - 5; 
     rectX1= rectX1 - 5;
    rectX2= rectX2 - 5;
     rectX3= rectX3 - 5;
 
  }
    
    
    //BARNEY
    p2Alto=500;
    p2Ancho=188;
    if (xBarney>420){
      xBarney=xBarney - 4;
    }
    image(barney,xBarney,yBarney,p2Ancho,p2Alto);
   
    p2Alto=500;
    p2Ancho=500;
    
    if (yLily>100){
      yLily=yLily - 5;
    }
    image(lily,xLily,yLily,p2Ancho,p2Alto);
    
     fill(#002CC4,200);
       rect (rectX1,68,130,50);
      rect (rectX2,68,130,50);
      rect (rectX3,68,130,50); 
    fill(0);
    textFont(himym,18);
    text(marshallTexto,rectX1,100);
    text(lilyTexto,rectX2,100);
    text(barneyTexto,rectX3,100);
  }
 
  if (contador>400){
     estado=6;
     contador=0;
     posXposter = 480;
     posXtexto = 480;
     tamTexto=20;
      textFont(himym,tamTexto);
   }
 
 }

if (estado==6){
  hizoClic=false;
  contador++;
   if (contador>0){
  posXFondo=posXFondo - 2;
image(fondo3,posXFondo,posYFondo,640,480);
 }
  if (contador>0 && contador<500){
   posYposter=0;
   if (posXposter<640){
   posXposter=posXposter - 2;
   }
   if(posXtexto < 500)
   {
     posXtexto = posXtexto - 2;
   }
   image(fondo4,posXposter,posYposter,2000,480); 
   fill(255,200);
   rect(posXtexto,170,2000,50);
   fill(0);
   text("Esta serie consta de 9 temporadas, estrenada en el año 2005 y terminada en 2014. Se puede ver por la plataforma de Disney+",posXtexto,200);
}
if (contador>500){
     estado=7;
     contador=0;
   }
}


if (estado==7){
 background(#FFD603); 
 image(fin,120,0, 400,400);
     if (mouseX>posXBotonI && mouseX<posXBotonI+tamXBotonI && mouseY> posYBotonI + 30 && mouseY < posYBotonI + tamYBotonI + 30) {
       fill(#FFFF93);
       rect(220,380,200,70);
   fill(255,0,0);
   textFont(comezar,30);
   text("REINICIAR",230,420);
    } else {
      fill(255,0,0);
      rect(220,380,200,70);
   fill(#FFFF93);
   textFont(comezar,30);
   text("REINICIAR",230,420); 
    }
  if (hizoClic==true){
    
    reiniciar();
  }

}


}
