int xPos;
int column1;
int column2;
int column3;
int column4;
int column5;
boolean mouseOverCenter;
boolean mouseOver1;
boolean mouseOver2;
boolean mouseOver3;
boolean mouseOver4;
boolean mouseOver5;

void setup(){
  size(500,500);
  xPos = width/2;
}

void draw(){
  if (mouseX <= 100){
    mouseOver1 = true;
  }
  else if(mouseX >= 100){
    mouseOver1 = false;
  }
  if (mouseOver1 == true){
    column1 = 0;
    column2 = 255;
    column3 = 255;
    column4 = 255;
    column5 = 255;
  }
  else if (mouseOver1 == false){
    column1 = 255;
    column2 = 0;
    column3 = 0;
    column4 = 0;
    column5 = 0;
  }
  if (mouseX <= 200){
    mouseOver2 = true;
  }
  else if(mouseX >= 200){
    mouseOver2 = false;
  }
  if (mouseOver2 == true){
    column1 = 0;
    column2 = 255;
    column3 = 255;
    column4 = 255;
    column5 = 255;
  }
  else if (mouseOver2 == false){
    column1 = 255;
    column2 = 0;
    column3 = 0;
    column4 = 0;
    column5 = 0;
  }
  noStroke();
  fill(column1);
  rect(0,0,100,height);
  fill(column2);
  rect(100,0,100,height);
  fill(column3);
  rect(200,0,100,height);
  fill(column4);
  rect(300,0,100,height);
  fill(column5);
  rect(400,0,100,height);
}
