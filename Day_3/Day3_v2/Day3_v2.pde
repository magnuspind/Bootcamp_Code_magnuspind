PImage pika;
int x;
int y;
int location;
float r;
float g;
float b;

void setup(){
  size(600,300);
  background(255,0,255);
  pika = loadImage("pika.png");
}

void draw(){
  loadPixels();
  int location = x + y * pika.width;
//  location = y * width + x;
  x = int(random(pika.pixels[location]));
  y = int(random(pika.pixels[location]));
//  r = red(pika.pixels[loc]);
//  g = green(pika.pixels[loc]);
//  b = blue(pika.pixels[loc]);
  fill(r,g,b,100);
  image(pika,0,0);
}
