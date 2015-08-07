PFont font;
PImage pika;
int pikaSize;
boolean mouseHit;

void setup(){
  size(800,600);
  font = loadFont("EuclidFraktur-100.vlw");
  fill(255,255,255);
  textFont(font,100);
  fill(0,0,0);
  pika = loadImage("pika.png");
}

void draw(){
  pikaSize = 250;
  if (mousePressed){
    background(0);
    fill(255);
    text("Hello", 250,250);
    image(pika,width/3,height/3,pikaSize,pikaSize);
  }
  else {
    background(255);
    image(pika,width/3,height/3,pikaSize,pikaSize);
  }
}
