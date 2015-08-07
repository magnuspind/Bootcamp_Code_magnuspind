int square1;
int xPos;
boolean mousePosition;

void setup(){
  size(500,500);
}

void draw(){
  xPos = 255;
  if (mouseX == xPos){
  mousePosition = true;
  }

  println(mousePosition);
  noStroke();
  fill(square1);
  rect(width-500,height-500,width,height);
}
