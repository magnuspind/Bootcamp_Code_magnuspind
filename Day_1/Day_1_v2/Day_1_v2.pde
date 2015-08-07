boolean myBoolean = true;
int redValue;

void setup(){
  size(800,600);
  background(0,0,0);
}

void draw(){
  println(frameCount);
  redValue = frameCount % 255;
  if (redValue == 255){
    redValue = redValue;
  }
  fill(redValue,0,0);
  ellipse(100,100,200,200);
}
