PImage pika;
float r;
float g;
float b;

void setup(){
  size(800,600);
  background(255);
  pika = loadImage("pika.png");
}

void draw(){
  int x = int(random(pika.width));
  int y = int(random(pika.height));
  int location = x + y * pika.width;
  
  loadPixels();
  
  r = red(pika.pixels[location]);
  g = green(pika.pixels[location]);
  b = blue(pika.pixels[location]);
  noStroke();
  fill(r,g,b);
  ellipse(x,y,20,20);
}
