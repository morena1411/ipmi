//Morena Ramos 125667/1
//https://youtu.be/XvOJxHMLKic
PImage imagen;
color colorCirculos;
color colorFondo;
boolean click=false;
boolean cambiarForma = false;

void setup() {
  imagen=loadImage("09.jpg");
  size(800, 400);
  colorCirculos=255;
  colorFondo=0;
  rectMode (CENTER);
}

void draw() {
  push();
  translate(400, 0);
  grilla(colorCirculos, colorFondo);
  pop();
  image(imagen, 0, 0, 400, 400);
}

float calcularDiametro(float distancia) {
  float diametro = map(distancia, 0, 280, 1, 25);
  return diametro;
}

void grilla(int colorCirculos, int colorFondo) {
  noStroke();
  background(colorFondo);
  fill(colorCirculos);
  int cantidadFilas = 17;
  int cantidadColumnas = 17;
  float espaciadoFila = 25;
  float espaciadoColum = 25;
  float centroGrillaX = (cantidadFilas * espaciadoFila / 2);
  float centroGrillaY =(cantidadColumnas * espaciadoColum / 2);
  for (int f = 0; f < cantidadFilas; f++) {
    for (int c = 0; c < cantidadColumnas; c++) {
      float x = (espaciadoFila * f);
      float y = (espaciadoColum * c);
      float distanciaAlCentro = dist(x, y, centroGrillaX, centroGrillaY);
      if (cambiarForma==true) {
        rect(x, y, calcularDiametro(distanciaAlCentro), calcularDiametro(distanciaAlCentro));
      } else {
        circle(x, y, calcularDiametro(distanciaAlCentro));
      }
    }
  }
}

void mouseClicked() {
  if (mouseButton==RIGHT) {
    float r =(random(255));
    float g =(random(255));
    float b =(random(255));
    colorCirculos=color(r, g, b);
    click=true;
  }

  if (mouseButton==LEFT) {
    float r =(random(255));
    float g =(random(255));
    float b =(random(255));
    colorFondo=color(r, g, b);
    click=true;
  }
}

void keyPressed () {
  if (key == ' ') {
    reiniciar();
  }

  if (key == 'f' || key == 'F') {

    cambiarForma = !cambiarForma;
  }
}

void reiniciar() {
  colorCirculos=255;
  colorFondo=0;
  click=false;
  cambiarForma=false;
}
