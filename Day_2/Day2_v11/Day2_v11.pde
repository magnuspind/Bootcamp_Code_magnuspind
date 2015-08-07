int xPos;
int yPos;
int rightColor;
int leftColor;
int opacity;
int blackValue;
boolean isValueBlack;
boolean mouseOverCenter;
boolean mouseBelowCenter;

void setup(){
  size(600,600);
  xPos = width/2;
  yPos = height/2;
}

void draw(){
//  black and white squares
  rightColor = 0;
  leftColor = 255;
  if (mouseX <= xPos){
    mouseOverCenter = true;
  }
  else if(mouseX >= xPos){
    mouseOverCenter = false;
  }
  if (mouseOverCenter == true){
    rightColor = 255;
    leftColor = 0;
  }
  else if (mouseOverCenter == false){
    rightColor = 0;
    leftColor = 255;
  }
//  opacity (above center)
  if (mouseY >= yPos){
    mouseBelowCenter = true;
  }
  else if(mouseY <=yPos){
    mouseBelowCenter = false;
  }
  if (mouseBelowCenter == true){
    opacity = 0;
  }
  else if (mouseBelowCenter == false){
    opacity = 255;
  }
//  grayscale fading up and down
  if (isValueBlack == false){
    blackValue +=1;
  }
  else if (isValueBlack == true){
    blackValue -=1;
  }
  if (blackValue == 255){
    isValueBlack = true;
  }
  else if (blackValue == 0){
    isValueBlack = false;
  }
  
//  all the rectangles
  noStroke();
  fill(blackValue);
  rect(0,0,width, (height/5)*4);  
  fill(leftColor,leftColor,leftColor,opacity);
  rect(0,0,width/2,height/2);
  fill(rightColor,rightColor,rightColor,opacity);
  rect(width/2,0,width/2,height/2);
}
