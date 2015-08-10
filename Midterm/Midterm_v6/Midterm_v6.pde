PImage browserFour;
float y = 0;
float counter;

void setup(){
  counter=0.0;
  size(800,550);
  browserFour = loadImage("browserFour.png");
}

void draw(){
  background(0);
  counter++;
  for (float x = 1; x < 100; x = x+0.2){
    imageMode(CENTER);
    rotate(counter/mouseX/mouseX);
    image(browserFour,width/2,height/2,width/x,height/x);
  }
}
