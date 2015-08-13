PImage stairs;
PVector velocity;
PVector position;
PVector gravity;
boolean gravityOn;

void setup(){
  size(800,600);
  background(0);
  velocity = new PVector (0,0);
  position = new PVector (random(0,800),0);
  stairs = loadImage("stairs.jpg");
}

void draw(){
  gravity = new PVector (0,0.1);

  position.add(velocity);
  velocity.add(gravity);
  
  image(stairs,position.x,position.y, -90,23);

}

void mousePressed(){
  velocity.x = -5;
  velocity.y = -1;
}
void mouseReleased(){
  velocity.x = +5;
  velocity.y = +1;
}
