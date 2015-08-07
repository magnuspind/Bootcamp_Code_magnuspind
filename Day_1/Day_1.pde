int rectangleX = 200;
int rectangleY = 100;
float decimalNumber = 100.5;
boolean myBoolean = false;
String myString = "hello";
color myColor = color(0,255,0);

void setup(){
  size(400,600);
  background(255,0,0);
}

void draw(){
  background(mouseX,mouseY,mouseX + 255);
  noStroke();
  fill(0,255,0);
  triangle(0,0,255,0,255/2,255);
  triangle(200,200,255,0,255/2,255);
  line(100,0,mouseX,mouseY);
  if (myBoolean == true){
  rect(0,0,width, height);
  }
}

