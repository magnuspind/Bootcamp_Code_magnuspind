Ball myBall;
Ball mySecondBall;
int myInt;
PVector myLocation;
PVector spacing;

void setup(){
  size(1000, 800);
  background(109);
  spacing = new PVector(500, 500);
//  location = new PVector(width/2, height/2);
//  velocity = new PVector(0,0);
  myLocation = new PVector (width/2, height/2);
  myBall = new Ball(myLocation);
  mySecondBall = new Ball(spacing);
}

void draw(){
  background(250);
  myBall.display();
  mySecondBall.display();
  myBall.keyPressed();
  mySecondBall.keyPressed();
}

