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


class Ball {

  PVector location;
  PVector velocity;
  
  Ball(PVector location){
    this.location = location;
    this.velocity = velocity;
    velocity = new PVector(0, 0);
  }
  
  void display(){
    location.add(velocity);
    fill(255, 255, 0);
    ellipse(location.x, location.y, 50, 50);
    if (location.x >= width){
      location.x = 0;
    } else if (location.x <= 0){
      location.x = width;
    }
  }
  void keyPressed(){
  if (key == CODED){
    if (keyCode == LEFT){
      velocity.x -=1;
    }
    if (keyCode == RIGHT){
      velocity.x += 1;
    }
  }
}
}

