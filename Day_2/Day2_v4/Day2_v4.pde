int xPos;
int square1Color;
int square2Color;
int square3Color;
int square4Color;
int square5Color;
boolean mouseInCenter;

void setup(){
  size(500,500);
  xPos = width/2;
  square1Color = 255;
  square2Color = 255-(255/2);
  square3Color = 255-(255/3);
  square4Color = 255-(255/4);
  square5Color = 255;
}

void draw(){

  noStroke();
  fill(square1Color);
  rect(width-500,height-500,width,height);
  fill(square2Color);
  rect(width-450,height-450,width-100,height-100);
  fill(square3Color);
  rect(width-400,height-400,width-200,height-200);
  fill(square4Color);
  rect(width-350,height-350,width-300,height-300);
  fill(square5Color);
  rect(width-300,height-300,width-400,height-400);
}
