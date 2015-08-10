PImage browserOne;
float x = 0;

void setup(){
  size(800,550);
  browserOne = loadImage("browserOne.png");
}

void draw(){
  imageMode(CENTER);
  x = x+1;
  if (x > width) {
    x = +1;
  }
  image(browserOne, width/2,height/2, width/x,height/x);
}
