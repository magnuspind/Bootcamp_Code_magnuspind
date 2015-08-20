Player ship;
boolean keyLeft;
boolean keyRight;
boolean keyShot;
int score;
PVector startPosition;


void setup(){
  size(1000, 800);
  background(10);
  startPosition = new PVector(width/2, height * 0.9);
  ship = new Player(startPosition);
}

void draw(){
  fill(10, 80);
  rect(0,0,width,height);
  ship.display();
  ship.update();
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == LEFT){
      keyLeft = true;
    }
    if (keyCode == RIGHT){
      keyRight = true;
    }
  }
}

void keyReleased(){
  if (key == CODED){
    if (keyCode == LEFT){
      keyLeft = false;
    }
    if (keyCode == RIGHT){
      keyRight = false;
    }
  }
}