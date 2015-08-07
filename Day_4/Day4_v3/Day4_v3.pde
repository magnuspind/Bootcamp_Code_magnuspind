int r,g,b;
float radius;
float x,y;
float speed;
float size;

void setup(){
  size(400,400);
  x = width/2;
  y = height/2;
  radius = 30;
  speed = 0.05;
  size = width/2;
}

void draw(){
//  background(y);
  fill(0,10);
  rect(0,0,400,400);
  noStroke();
  r = 255;
  g = 255;
  b = 255;
  fill(r,g,b);
  
  x = frameCount % width;
  y = height/2 + sin(frameCount * speed) * size;
  
  ellipse(x,y,radius,radius);
  fill(0,255,0);
  x = frameCount % width;
  y = height/2 + cos(frameCount * speed) * size;
  
  ellipse(x,y,radius,radius);

}
