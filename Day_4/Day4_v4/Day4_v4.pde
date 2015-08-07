int r,g,b;
float radius;
float x,y;
float speed;
float size;

void setup(){
  background(0);
  size(400,400);
  x = width/2;
  y = height/2;
  radius = 1;
  speed = 0.05;
  size = 20;
}

void draw(){
//  background(y);
//  fill(0,10);
//  rect(0,0,400,400);
  noStroke();
  r = 255;
  g = 255;
  b = 255;
  fill(255);
//  int time = millis();
  y = width/2 + cos(frameCount * speed) * size;
  x = height/2 + sin(frameCount * speed) * size;
  
//  size = size +=1;
//  radius = abs(sin(frameCount * speed)) * size;
  
//  ellipse(x,y,radius,radius);
  ellipse(x,y,x,x);


}
