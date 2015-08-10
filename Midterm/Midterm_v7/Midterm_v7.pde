PImage browserFour;
float y = 0;
float counter;
int x;


void setup(){
  counter=0.0;
  size(800,550);
  browserFour = loadImage("browserFour.png");
}

void draw(){
  background(0);
  counter++;
  for (float x = 1; x < 50; x = x+0.3){
    imageMode(CENTER);
    rotate(counter/600/300);
    image(browserFour,width/2,height/2,width/x,height/x);
  }
}
