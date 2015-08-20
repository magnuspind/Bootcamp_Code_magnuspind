float x,y,z;
PImage browserFive;

void setup(){
  size(displayWidth, displayHeight, P3D);
  background(0);
  browserFive = loadImage("browserFive.png");
}

void draw(){
  background(0);
  
  camera(width/2.0, height/2.0, mouseY*6 / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  
  x = width/2;
  y = height/2;
  z = 0;
  
  translate(x,y,z);
  imageMode(CENTER);
  image(browserFive, 0,0);
}