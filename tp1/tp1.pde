//Ramos, Morena Comisión 1

PImage miImagen;

void setup() {
  size (800, 400);
  miImagen = loadImage("picasso.jpg");
}
void draw() {
  background(210, 170, 60);
  image(miImagen, 0, 0, 400, 400);
  strokeWeight(3);
  
  //pelo derecha
  fill(116, 23, 25);
  curve(1000, 224, 633, 32, 577, 86, 727, 300);
  curve(150, 174, 633, 32, 588, 30, 927, 300);
  curve(100, 74, 729, 178, 640, 29, 27, 700);
  line(613, 26, 570, 36);
  line(739, 63, 729, 178);
  
  //cara derecha
  fill(23, 116, 46);
  beginShape();
  vertex(670, 145);
  vertex(738, 64);
  vertex(615, 26);
  vertex(579, 83);
  endShape(CLOSE);
  
  line(635, 30, 640, 105);
  line(640, 105, 658, 94);
  line(647, 118, 676, 110);
  
  curve(607, 90, 590, 82, 625, 78, 607, 0);
  curve(707, 80, 682, 64, 725, 65, 770, 2);
  
  //pelo izquierdo
  fill(255,134,239);
  circle(510,110,140);
 fill(255);
  triangle(568, 182, 670, 145, 578, 84);
  
  //cara izquiera
  fill(139,154,237);
  curve(700, -300, 478, 74, 598, 99, 500, -1000);
  line(478,74,598,99);
  
  arc(506, 105, 30, 20, 0, PI);
  arc(587,131,20,20,0,PI);
  
  fill(250,60,255);
  line(565, 90, 565, 150);
  line(565, 150, 550, 150);
  line(542,156,560,156);
  line(542,165,555,165);
  
   noStroke();
    fill(255,134,239);
  ellipse(494,82,70,40); 
  stroke(0);
  
  //mesada abajo
  fill(122,80,20);
  rect(400,350,800,400);
  //hoja papel
  fill(255);
  rect(451,322,150,70);
  
  
  
  //cuerpo izquierda
  fill(165, 13, 13);
   ellipse(435,263,70,150);
  quad(657,319, 652,195, 425,190, 452,333);
   line(493,268,508,230);
  line(544,230,538,306);
  fill(139,154,237);
  quad(600,286, 534, 302, 534, 350, 610,320);
   
   fill(255);
  triangle(496,329,446,299,451,332);
  
  //cuello derecha
  fill(23, 116, 46);
  triangle(670, 146, 598, 173, 729, 179);
  triangle(655, 214, 598, 173, 729, 179);
  
  
  fill(255,250,10);
  curve(0,0,729,179,733,313,880,0);
  
  beginShape();
  vertex(596, 174);
  vertex(589, 250);
  vertex(653,298);
  vertex(666, 217);
  endShape();
  
  beginShape();
  vertex(727,183);
  vertex(660,210);
  vertex(658,320);
  vertex(698,303);
  vertex(732,318);
  vertex(727,183);
  endShape(CLOSE);
  
  
  line(698,303,710,298);
  line(717,282,731,270);
  line(746,350,714,271);
  curve(0,200,680,222,662,269,800,0);
  
  fill(23, 116, 46);
  rect(610,323,124,50);
  triangle(659,321, 699,304, 731,321);
   beginShape();
  vertex(511, 166);
  vertex(450, 191);
  vertex(473,245);
  vertex(480,273);
  vertex(489,230);
  vertex(530,180);
  endShape();
  
  
  fill(165, 13, 13);
  curve(100,100,591,222,570,261,800,100);
  line(610,322, 598,258);
  
  //brazo izq
  fill(139,154,237);
   beginShape();
  vertex(584,185);
  vertex(526,190);
  vertex(509,229);
  vertex(544,229);
  vertex(545,207);
  vertex(597,200);
  vertex(584,185);
  endShape(CLOSE);
  
    
  fill(255,0,0);
  text("x: " + mouseX + ", y:" + mouseY, mouseX, mouseY);
}
