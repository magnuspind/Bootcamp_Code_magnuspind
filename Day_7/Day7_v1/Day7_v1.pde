float x = 100;
float y = 100;
float xSpeed = 5;
float ySpeed = 1;

void setup(){
  size(800,800);
}

void draw(){
  x = x + xSpeed;
  y = y + ySpeed;
  if (x > width){
    xSpeed = xSpeed * -1;
  }
  if (x < 0){
    xSpeed = xSpeed * -1;
  }
  if (y > height){
    ySpeed = ySpeed * -1;
  }
  if (y < 0){
    ySpeed = ySpeed * -1;
  }
  ellipse(x,y,30,30);
}
