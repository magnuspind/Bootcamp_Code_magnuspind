PImage cursor;
float[] circleX = new float [900];
float[] circleY = new float [900];
float counter;

void setup(){
  size(displayWidth,displayHeight);
  for (int i = 0; i < circleX.length; i++) {
    circleX[i] = int(random(0,displayWidth));
    circleY[i] = int(random(0,displayHeight));
//    circleX[i] = int(random(0,displayWidth/2));
//    circleY[i] = int(random(0,displayHeight/2));
  }
  cursor = loadImage("cursor1.png");
  counter = counter++;
}

void draw(){
  background(255);
//  for (int i = 0; i < circleX.length; i++) { //defining [i] values
//    circleX[i] = int((width/2));
//    circleY[i] = int(height/2);
//  }
  for (int i = 0; i < circleX.length; i++){
//    float red = map(i,0,circleX.length,0,255);
//    float green = map(i,0,circleX.length,0,255);
//    float blue = map(i,0,circleX.length,0,255);
//    image(cursor,circleX[i],circleY[i],28/1.4,40/1.4);
    image(cursor,circleX[i],circleY[i],28/1.4,40/1.4);
  }
}
