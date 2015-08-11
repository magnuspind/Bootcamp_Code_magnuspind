PImage browserFive;
float y = 0;
float counter;
int x;
int firstPart = 0;
int secondPart = 200;

void setup(){
  counter=1000;
  size(displayWidth,displayHeight);
  browserFive = loadImage("browserFive.png");
  smooth();
}

void draw(){
  background(0);
  counter++;
    for (float x = 1; x < 80; x = x+0.7){
    imageMode(CENTER);
    rotate(counter/1000/300);
    image(browserFive,width/2,height/2,width/x,height/x);
    }
  firstPart++;
  secondPart++;
}
