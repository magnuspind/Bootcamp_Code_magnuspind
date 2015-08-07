int xPos;
int yPos;
boolean mouseOverCircle;

void setup(){
  size(800,600);
  background(255,0,0);
  xPos = width/3;
  yPos = height/3;
}

void draw(){
  background(255,0,0);
  noStroke();
  fill(255,255,0);
  ellipse(xPos, yPos, 200,200);
  println("posY mouse" + mouseY);
  println("posX mouse" + mouseX);
  if (mouseX >= xPos){
    mouseOverCircle = true;
  }
  else if(mouseX <= xPos){
    mouseOverCircle = false;
  }
  if (mouseOverCircle == true){
    xPos = xPos + 1;
  }
  else {
    xPos = xPos -1;
  }
  if (mouseY >= yPos){
    mouseOverCircle = true;
  }
  else if(mouseY <= yPos){
    mouseOverCircle = false;
  }
  if (mouseOverCircle == true){
    yPos = yPos + 1;
  }
  else {
    yPos = yPos -1;
  }
}
