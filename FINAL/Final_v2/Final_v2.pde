PImage browser;
float x;
float y;
float z;

int state = 0;

void setup(){
  size(displayWidth, displayHeight, P3D);
  browser = loadImage("browserFive.png"); 
}

void draw(){
  background(0);
  for (float x = 1; x < 80; x = x+0.7){
    x = width/2;
    y = height/2;
    imageMode(CENTER);
    image(browser,0,0,100/x,100/x);
  }
}