PImage browser;
//int x;
//int y;
//int location;
float r;
float g;
float b;
int cols;
int rows;
int cellSize = 2;


void setup(){
  size(650, 388, P3D);
  browser = loadImage("browserFive.png");
  cols = width/ cellSize;
  rows = height/ cellSize;
}

void draw(){
    background(255,255,255);

  noStroke();
  loadPixels();
  
 
  for (int i = 0; i < cols; i++){
    for (int j = 0; j < rows; j++){
      int x = i * cellSize + cellSize/2;
      int y = j * cellSize + cellSize/2;
      int location = x + y * browser.width;
      float z = (mouseX/float(width)) * brightness(browser.pixels[location]);
      color c = browser.pixels[location];
      pushMatrix();
        translate(x, y, z);
        fill(c);
        rectMode(CENTER);
        rect(0, 0, cellSize, cellSize);
      popMatrix();
    }
  }
}
  
  //r= red(browser.pixels[location]);
  //g = green(browser.pixels[location]);
  //b = blue(browser.pixels[location]);

//  location = x+ y * browser.width;
  //fill(r, g, b, 100);
////  image(browser,0,0);
  //ellipse(x,y,10,10);
//}