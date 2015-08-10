PImage browserOne;
float y = 0;

void setup(){
  size(800,550);
  browserOne = loadImage("browserOne.png");
}

void draw(){
  if (y < width) {
    y = y+1;
  }
  imageMode(CENTER);
  image(browserOne,width/2,height/2,width/2+y,height/2+y);
  for (int x = 1; x < 40; x = x+1) {
    imageMode(CENTER);
    image(browserOne, width/2, height/2, width/x+y, height/x+y);
  }
}
