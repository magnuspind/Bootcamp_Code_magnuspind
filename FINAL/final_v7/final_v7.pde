PImage google;
PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage browserFive;

float x,y,z;
float globalTime = millis();
float counter = 0;

int state = 0;

void setup(){
  size(displayWidth, displayHeight, P3D);
  background(0);
  google = loadImage("Google.png");
  cursor1 = loadImage("cursor1.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
  browserFive = loadImage("browserFive.png");
}


void draw(){
   
  //SCENE 1: Google button
  
  float counter = 1000;
  
  counter = counter++;
  background(0);
  x = width/2;
  y = height/2;
  z = 1000;
  imageMode(CENTER);
  translate(x,y,z);
  image(google,20,30);
  
  
  
  
}