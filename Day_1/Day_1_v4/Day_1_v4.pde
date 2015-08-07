int redValue = mouseX;
int greenValue = mouseX;
int blueValue = mouseX;

void setup(){
  size(800,600);
  background(0,0,0);
}

void draw(){
  noStroke();
  fill(mouseX/6, mouseX/6, mouseX/6);
  ellipse(width/2, height/2, 600,600);
  fill(mouseX/5, mouseX/5, mouseX/5);
  ellipse(width/2, height/2, 500,500);
  fill(mouseX/4, mouseX/4, mouseX/4);
  ellipse(width/2, height/2, 400,400);
  fill(mouseX/3, mouseX/3, mouseX/3);
  ellipse(width/2, height/2, 300,300);
  fill(mouseX/2, mouseX/2, mouseX/2);
  ellipse(width/2, height/2, 200,200);
  fill(mouseX, mouseX, mouseX);
  ellipse(width/2, height/2, 100,100);
  fill(255,255,255);
  rect(mouseX, height/2, 10, 10);
  stroke(0,0,0);
  fill(0, 0, 0, 0);
  ellipse(width/2, height/2, width, height);
}
  


