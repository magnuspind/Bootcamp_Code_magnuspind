PVector location;
PVector velocity;

PVector location2;
PVector velocity2;

float distance;
void setup(){
  size(displayWidth, displayHeight);
  
  location = new PVector(25, 25);
  velocity = new PVector(1,2);
}

void draw(){
  background(255);
  location.add(velocity);
//  for (int i = 0; i < 500; i ++){
//    ellipse(random(0, location.x), random(0,location.y) + i, 50, 50);
//  }
  ellipse(location.x, location.y, 50, 50);
  if (location.x > width - 25){
    velocity.x = velocity.x * -1;
  }
  if (location.x < 0 + 25){
    velocity.x = velocity.x * -1;
  }
  if (location.y > height - 25){
    velocity.y = velocity.y * -1;
  }
  if (location.y < 0 + 25){
    velocity.y = velocity.y * -1;
  }
  distance = dist(width/2, height/2, mouseX, mouseY);
//  line(location.x + 25, location.y + 25, mouseX, mouseY);
  println(distance);
}

