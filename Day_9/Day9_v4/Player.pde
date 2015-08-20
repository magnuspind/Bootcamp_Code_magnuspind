class Player{
  PVector location;
  PVector velocity;
  float maxVelocity;

  Player(PVector location){
    this.location = location;
    maxVelocity = 10;
    velocity = new PVector (0, 0);
  }
  
  void display(){
    location.add(velocity);
    pushMatrix();
    translate(location.x, location.y);
    stroke(200, 255, 255, 180);
//    point(0, -12);
//    point(8, 8);
//    point( -8, 8);
    triangle(0, -12, 8, 8, -8, 8);
    popMatrix();
  }
  
  void update(){
    if (location.x >= width){
      location.x = 0;
    } else if (location.x <= 0){
      location.x = width;
    }
    
    if (keyLeft == true){
      velocity.x -= 0.5;
    } else if (keyRight == true){
      velocity.x += 0.5;
    }
    
    if (velocity.x >= maxVelocity){
      velocity.x = maxVelocity;
    }
  }
  
}