int r, g, b;
float radius;
float x, y;
float speed;
float size;

boolean circle = false;
boolean wave;

void setup(){
  size(400, 400);
  x = width/2;
  y = height/2;
  radius = 20;
  speed = 600;
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
  
  
  if (keyPressed){
    if(key == 'c'){
      circle = true;
      wave = false;
    }
    if(key == 'w'){
      wave = true;
      circle = false;
    }
  }
  
  
  
//  int time = millis();
//    x = width/2 + sin( time * speed) * size;
//    y = height/2 + cos(time * speed) * size;

  if (wave == true) {
    circle= false;
    x = frameCount % width;
    y = height/2 + sin(frameCount * speed) * size;
  }
//  ellipse(x, y, radius, radius);
  
  fill(255);
//  x2 = frameCount % width;
//  y2 = height/2 + cos(frameCount * speed) * size;
//  ellipse(x2, y2, radius, radius);
//  
  if (circle == true){
    wave = false;
    x = width/2 + sin(frameCount * speed) * size;
    y = height/2 + cos(frameCount * speed) * size;
  }
//    
//  size += 1;
//  radius = abs(sin(frameCount * speed)) * size;
  ellipse(x, y, radius, radius); 
  
}

//void keyPressed(){
//  if (key == 'c'){
//    circle = true;
//  }
//  if (key == 'w'){
//    wave = true;
//  }
//  if (key == 'r'){
//    circle = false;
//    wave = false;
//  }
//}

