PImage creepyCat;
int red;
int green;
int blue;
int radius;
int imageWidth = 100;
int imageHeight = 100;
float ratioWidth;
float ratioHeight;


void setup(){
  size(800,800);
  creepyCat = loadImage("creepyCat.jpg");
}

void draw(){
  radius = width/2;
  background(255,255,255);
  ratioWidth = imageWidth/1;
  ratioHeight = imageHeight/1;
  ellipse(width/2,height/2,800,800);
  ellipse(width/2,height/2,600,600);
  ellipse(width/2,height/2,400,400);
  red = mouseX;
  green = mouseY;
  blue = mouseX-mouseY;
//  tint(red,green,blue);
  imageMode(CENTER);
  image(creepyCat,width/2, height/2, 800-mouseX,800-mouseX);
//  imageMode(CORNERS);
//  image(creepyCat,width/2,height/2, width, height);
//  image(creepyCat,0,0, width/2, height/2);
}
