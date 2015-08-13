PVector velocity;
PVector position;
PVector gravity;

int score = 0;
String scoreText;

PVector obstaclePosition;
PVector obstacleVelocity;

void setup(){
  size( 500, 600);
  velocity = new PVector (0, 0);
  position = new PVector ( width/2,0);
  gravity = new PVector (0, 0.5);
  obstaclePosition = new PVector(width+100, 0);
  obstacleVelocity = new PVector (-1, 0);
}

void draw(){
  background(0);
  position.add(velocity);
  velocity.add(gravity);
  
  obstaclePosition.add(obstacleVelocity);
  fill(0, 255, 0);
  rect(obstaclePosition.x, obstaclePosition.y, 100, 300);
//  rect(obstaclePosition.x, obstaclePosition.y +500, 100, 100);
//  if (){
//  }
  if (position.y > height){
    position.y = height;
  }
  fill(255,255,0);
  ellipse(position.x, position.y - 25, 50, 50);
//  println(velocity.y);
//  if (position.x > width){
//    velocity.x *= -1;
//  } else if (position.x < 0){
//    velocity.x *= -1;
//  }
    if(position.x >=obstaclePosition.x - 25 && position.y <= obstaclePosition.y + 300 + 25 && position.x <= obstaclePosition.x + 100 + 25){
      textSize(50);
      fill(255,0,0); 
      text("YOU DIE", width/3, height/2);
      score += 1; 
      if (score == 1){
        scoreText = "1";
      }
      text(scoreText, width/2, height/4);
      obstacleVelocity.mult(0);
      
    }
    
    println("position.x = " + position.x);
    println("obstaclePosition.x = " + obstaclePosition.x);
}

void mousePressed(){
  velocity.y = -10;  
//  if (mouseX < width/2){
//    velocity.x = 5;
//  }
}


