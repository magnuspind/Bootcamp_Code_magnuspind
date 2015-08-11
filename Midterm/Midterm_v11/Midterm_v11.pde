PImage cursor1;
int r,g,b;
float radius;
float x,y;
float speed;
float size;

void setup(){
  size(displayWidth,displayHeight);
  x = width/2;
  y = height/2;
  radius = 30;
  speed = 0.05;
  size = width/2;
  cursor1 = loadImage("cursor1.png");
}

void draw(){
  background(0);
  noStroke();  
  x = frameCount % width;
  y = height/2 + sin(frameCount * speed) * size;
  image(cursor1,x,y,radius,radius);
  fill(0,255,0);
  x = frameCount % width;
  y = height/2 + cos(frameCount * speed) * size;

}
