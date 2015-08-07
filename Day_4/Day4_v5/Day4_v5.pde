int r, g, b;
float radius;
float x, y;
float speed;
float size;
float time;
boolean circle = false;
boolean wave;

void setup(){
  size(400, 400);
  x = width/2;
  y = height/2;
  radius = 20;
  speed = 0.05;
  size = width/4;
//  size = 0;
}


void draw(){
//  background(200, 200, 200);
  fill(0, 10);
  rect(0,0,400,400);
  noStroke();
  r = 255;
  g = 0;
  b = 0;
  fill(r,g,b);
//  int time = millis();

//    x = width/2 + sin( time * speed) * size;
//    y = height/2 + cos(time * speed) * size;

  if (wave == true){
  x = frameCount % width;
  y = height/2 + sin(frameCount * speed) * size;
  }

//    x = width/2 + sin(frameCount * speed) * size;
//    y = height/2 + cos(frameCount * speed) * size;
    
//  size += 1;
//  radius = abs(sin(frameCount * speed)) * size;

  ellipse(x, y, radius, radius);
  if (circle == true){
    x = width/2 + sin(frameCount * speed) * size;
    y = height/2 + cos(frameCount * speed) * size;
}
}

void keyPressed(){
  if (key == 'c'){
    circle = true;
  }
  if (key == 'w'){
  wave = true;
  }
  if (key == 'r'){
    wave = false;
    circle = false;
  }
}

