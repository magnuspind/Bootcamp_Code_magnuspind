//float x = 100;
//float y = 100;
PVector location;
//float xSpeed = 5;
//float ySpeed = 1;
PVector velocity;

void setup(){
  size(800,800);
  location = new PVector(150,100);
  velocity = new PVector(5,1);
}

void draw(){
  background(0);
//  x = x + xSpeed;
//  y = y + ySpeed;
  location.add(velocity);
  if (location.x > width){
    velocity.x = velocity.x * -1;
  }
  if (location.x < 0){
    velocity.x = velocity.x * -1;
  }
  if (location.y > height){
    velocity.y = velocity.y * -1;
  }
  if (location.y < 0){
    velocity.y = velocity.y * -1;
  }
//  if (location.x >= width/2 && location.y <=500){
//    velocity.x = velocity.x * -1;
//  }
//  if (location.x == 600 && location.y <= 500){
//    velocity.x = velocity.x * -1;
//  }
  if (dist(location.x, location.y,width/2,height/2) <= 200 + 5){
    velocity.x = velocity.x * -1;
  }
  fill(0,0,255);
  ellipse(width/2,height/2,400,400);
//  rect(width/2,0,100,500);
//  rect(width/4,500,100,500);
  fill(255,0,0);
  ellipse(location.x,location.y,10,10);
}
