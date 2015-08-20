PImage browser;
PImage google;
float x,y,z;

void setup(){
  size(displayWidth, displayHeight, P3D);
  browser = loadImage("browserFive.png");
  google = loadImage("Google.png");
  background(0);
}

void draw(){
  x = width/2;
  y = height/2;
  z = mouseY;
  imageMode(CENTER);
  translate(x,y,z-200);
  image(google, 0,0);
  
  translate(x,y,z+200);
  image(browser, 0,0);
}