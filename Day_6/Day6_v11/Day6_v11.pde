PImage cursor;
float[] circleX = new float [400];
float[] circleY = new float [400];
float counter;

void setup(){
  size(displayWidth,displayHeight);
  for (int i = 0; i < circleX.length; i++) {
    circleX[i] = int(random(0,displayWidth));
    circleY[i] = int(random(0,displayHeight));
  }
  cursor = loadImage("cursor1.png");
  counter = counter++;
}

void draw(){
  background(0);
  counter++;
  for (int i = 0; i < circleX.length; i++){
    rotate(counter/200/200);
    image(cursor,circleX[i],circleY[i],28/1.4,40/1.4);
  }
}
