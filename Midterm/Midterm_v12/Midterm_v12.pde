PImage cursor;
int r,g,b;
float radius;
float x,y;
float speed;
float size;

void setup(){
  size(displayWidth,displayHeight);
  cursor = loadImage("cursor1.png");

  x = width/2;
  y = height/2;
  radius = 0.01;
  speed = 0.1;
  size = 10;
}

void draw(){
  background(0);
//  noStroke();
//  r = 255;
//  g = 255;
//  b = 255;
//  fill(r,g,b);
//  
//  x = frameCount % width;
  x = height/10 + cos(frameCount * speed) * size;
  y = height/10 + sin(frameCount * speed) * size;
  
  image(cursor, x,y,28,40);

}
