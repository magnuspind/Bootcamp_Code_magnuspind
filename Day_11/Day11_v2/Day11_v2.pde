PImage pizza;
//int x;
//int y;
//int location;
float r;
float g;
float b;


void setup(){
  size(650, 388);
  background(255,255,255);
  pizza = loadImage("pizza_slice.png");
  
}

void draw(){
  noStroke();
  
  int x = int(random(pizza.width));
  int y = int(random(pizza.height));
  
  loadPixels();
  int location = x + y * pizza.width;
  

  r= red(pizza.pixels[location]);
  g = green(pizza.pixels[location]);
  b = blue(pizza.pixels[location]);

//  location = x+ y * pizza.width;
  fill(r, g, b, 100);
//  image(pizza,0,0);
  ellipse(x,y,10,10);
}