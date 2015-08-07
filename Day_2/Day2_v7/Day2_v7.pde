int xPos;
int rightColor;
int leftColor;
boolean mouseOverCenter;

void setup(){
  size(800,600);
  xPos = width/2;
}

void draw(){
  rightColor = 0;
  leftColor = 255;
  
  if (mouseX <= xPos){
    mouseOverCenter = true;
  }
  else if(mouseX >= xPos){
    mouseOverCenter = false;
  }
  if (mouseOverCenter == true){
    rightColor = 0;
    leftColor = 255;
  }
  else if (mouseOverCenter == false){
    rightColor = 255;
    leftColor = 0;
  }
  
  noStroke();
  fill(leftColor);
  rect(0,0,width/2,height);
  fill(rightColor);
  rect(width/2,0,width/2,height);
}



  if(isBright == true){
    column2Value -=1;

