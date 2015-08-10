PImage browserOne;
float y = 0;

void setup(){
  size(800,550);
  browserOne = loadImage("browserOne.png");
}

void draw(){
  imageMode(CENTER);
  image(browserOne,width/2,height/2,width/2,height/2);
  for (int x = 1; x < (mouseY/20); x = x+1) {
    imageMode(CENTER);
    image(browserOne, width/2, height/2, width/x, height/x);
      if(mousePressed) {
      y = y+1;
      image(browserOne,width/2,height/2,width/x+y,height/x+y);
    }
  }
}
