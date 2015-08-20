PImage browser;
PImage google;
float x1;
float x2;
float y1;
float y2;
float z1;
float z2;

void setup(){
  size(displayWidth, displayHeight, P3D);
  browser = loadImage("browserFive.png");
  google = loadImage("Google.png");
  background(0);
}

void draw(){
  pushMatrix();
    x1 = width/1.5;
    y1 = height/1.5;
    z1++;
    translate(x1,y1,z1);
    imageMode(CENTER);
    image(browser,0,0,200,200);
  popMatrix();
  pushMatrix();
    x2 = width/3;
    y2 = height/3;
    z2++;
    translate(x2,y2,z2);
    imageMode(CENTER);
    image(google,0,0,200,200);
  popMatrix();
}