//
////float x = 150;
////float y = 100;
//PVector location;
////float xSpeed = 5;
////float ySpeed = 1;
//PVector velocity;
//
//void setup(){
//  size(800, 800);
//  location = new PVector(15, 100);
//  velocity = new PVector( 5, 1);
//}
//void draw(){
//  background(255);
////  x = x + xSpeed;
////  y = y + ySpeed;
//  location.add(velocity);
//
//  if ( location.x > width - 15){
//    velocity.x = velocity.x * -1;
//  }
//  if ( location.x < 15) {
//    velocity.x = velocity.x * -1;
//  }
//  if ( location.y > height) {
//    velocity.y = velocity.y * -1;
//  }
//  if ( location.y < 0 ) {
//    velocity.y = velocity.y * -1;
//  }
////  if (location.x >= width/2 && location.y <= 500){
////    velocity.x = velocity.x * -1;
////  }
////  if (location.x == 600 && location.y <= 500){
////    velocity.x = velocity.x * -1;
////  } 
////  println(x);
//if ( dist(location.x, location.y, width/2, height/2) <= 200 + 15){
////  println("collision");
//  
//  velocity.x = velocity.x * -1;
////  println(velocity.x);
//}
//println(velocity.x);
//  fill(0,0,255);
////  rect( width/2, 0, 100, 500);
//  ellipse(width/2, height/2, 400, 400);
//  fill(0,255,0);
////  rect( width/4, 500, 100, 500);
//  fill(255,0,0);
//  ellipse(location.x, location.y, 30,30);
//}
//
//
//
//
//// 2nd

PVector location;
PVector velocity;

PVector location2;
PVector velocity2;

float distance;
void setup(){
  size(800, 500);
  
  location = new PVector(25, 25);
  velocity = new PVector(1,2);
  location2 = new PVector( 500, 300);
  velocity2 = new PVector(-1, -2);
}

void draw(){
  background(255);
  location.add(velocity);
  location2.add(velocity2);
//  for (int i = 0; i < 500; i ++){
//    ellipse(random(0, location.x), random(0,location.y) + i, 50, 50);
//  }
  ellipse(location.x, location.y, 50, 50);
  ellipse(location2.x, location2.y, 100, 100);
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
  if (location2.x > width - 50){
    velocity2.x = velocity2.x * -1;
  }
  if (location2.x < 0 + 50){
    velocity2.x = velocity2.x * -1;
  }
  if (location2.y > height - 50){
    velocity2.y = velocity2.y * -1;
  }
  if (location2.y < 0 + 50){
    velocity2.y = velocity2.y * -1;
  }
  distance = dist(width/2, height/2, mouseX, mouseY);
//  line(location.x + 25, location.y + 25, mouseX, mouseY);
  println(distance);
}

//// ex 3
//PVector location;
//PVector velocity;
//PVector playerLocation;
//PVector playerVelocity;
//boolean gameOver = false;
//boolean collided = false;
//boolean reset = false;
//boolean startGame = true;
//
//float distance;
//void setup(){
//  size(800, 500);
//  
//  location = new PVector(25, 25);
//  velocity = new PVector(5,5);
//  playerLocation = new PVector( 500, 300);
//  playerVelocity = new PVector(0, 0);
//  collided = false;
//}
//
//void draw(){
//  background(255);
//  
////  if (startGame == true){
//  location.add(velocity);
//  playerLocation.add(playerVelocity);
////  for (int i = 0; i < 500; i ++){
////    ellipse(random(0, location.x), random(0,location.y) + i, 50, 50);
////  }
//  distance = dist(location.x, location.y, playerLocation.x, playerLocation.y);
//  ellipse(location.x, location.y, 50, 50);
//  ellipse(playerLocation.x, playerLocation.y, 100, 100);
//  if (location.x > width - 25){
//    velocity.x = velocity.x * -1;
//  }
//  if (location.x < 0 + 25){
//    velocity.x = velocity.x * -1;
//  }
//  if (location.y > height - 25){
//    velocity.y = velocity.y * -1;
//  }
//  if (location.y < 0 + 25){
//    velocity.y = velocity.y * -1;
//  }
//  if (playerLocation.x > width - 50){
//    playerVelocity.x = playerVelocity.x * -1;
//  }
//  if (playerLocation.x < 0 + 50){
//    playerVelocity.x = playerVelocity.x * -1;
//  }
//  if (playerLocation.y > height - 50){
//    playerVelocity.y = playerVelocity.y * -1;
//  }
//  if (playerLocation.y < 0 + 50){
//    playerVelocity.y = playerVelocity.y * -1;
//  }
//  if (distance < 75 && collided == false){
////    velocity.x = velocity.x * -1;
////    playerVelocity.x = playerVelocity.x * -1;
////    velocity.y = velocity.y * -1;
////    playerVelocity.y = playerVelocity.y * -1;
//    collided = true;
//  }
//  if (distance < 70 && collided == true){
////    velocity.x = velocity.x * -1;
////    playerVelocity.x = playerVelocity.x * -1;
////    velocity.y = velocity.y * -1;
////    playerVelocity.y = playerVelocity.y * -1;
//      gameOver = true;
//  }
//  if (gameOver == true){
//    textSize(100);
//    fill(255, 0, 0);
//    text("Game Over", width/4, height/2);
//    velocity.mult(0);
//    playerVelocity.mult(0);
//    
//    reset = true;
//  }
//
////  line(location.x + 25, location.y + 25, mouseX, mouseY);
//  println(collided);
//}
//
//void keyPressed(){
//  if (key == CODED){
//    if (keyCode == UP){
//      playerVelocity.y -= 1;
//    }
//    if (keyCode == DOWN){
//      playerVelocity.y += 1;
//    }
//    if (keyCode == RIGHT){
//      playerVelocity.x += 1;
//    }
//    if (keyCode == LEFT){
//      playerVelocity.x -=1;
//    }
//    
//    if (keyCode == UP && reset == true){
//      
//    }
//    
//  }
//}
