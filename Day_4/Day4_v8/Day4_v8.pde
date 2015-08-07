PImage image;

int r, g, b;
float radius;
float x, y;
float speed;
float size;

boolean circle = false;
boolean wave;

void setup(){
  size(800, 800);
  image= loadImage("pika.png");
  x = width/2;
  y = height/2;
  radius = 20;
  speed = 0.05;
  size = width/2;
//  size = 0;
}

void draw(){
//  background(200, 200, 200);
  fill(0, 10);
  rect(0,0,800,800);
  noStroke();
  r = 255;
  g = 0;
  b = 0;
  fill(r,g,b);
//  x = width/2 + sin(frameCount * speed) * size;
//  y = frameCount % height;

  radius = abs(sin(frameCount*speed)*size);

//  ellipse(x, y, radius, radius); 
imageMode(CENTER);
  image(image, x,y, radius, radius);
}
