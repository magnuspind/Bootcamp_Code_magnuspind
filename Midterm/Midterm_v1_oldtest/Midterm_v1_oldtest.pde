PImage a;
float s = 0;

void setup()
{
  a = loadImage("browserOne.png");
  size(800,600);
  noStroke();
  background(255);
  smooth();
}

void draw()
{ 
 s = s + 2;
 if (s > 30) {
   s = 30;
 }

  float pointillize = map(s, 0, s, 2, 78);
  int x = int(random(a.width));
  int y = int(random(a.height));
  color pix = a.get(x, y);
  fill(pix, 126);
  ellipse(x, y, pointillize, pointillize);

} 

