PImage cursor;
float[] circleX = new float [100];
float[] circleY = new float [400];
float counter;

void setup(){
  size(displayWidth,displayHeight);

  cursor = loadImage("cursor1.png");
  counter = counter++;

}

void draw(){
  background(0);
//  for (int i = 0; i < circleX.length; i++) {
//    for (int j = 0; j < circleY.length; j++){
//    circleY[j] = map(i,0, circleY.length, 0,displayHeight);
//    }  
//  circleX[i] = map(i,0, circleX.length,0,displayWidth);
//  }
  for (int i = 0; i < circleX.length; i++){
    circleX[i] = map(i,0, circleX.length,0,displayWidth);
    for (int j = 0; j < circleY.length; j++){
      circleY[j] = map(i,0, circleY.length, 0,displayHeight);
    image(cursor,circleX[i],circleY[j],28/1.4,40/1.4);
  }
  }
  for (int i = 0; i < circleX.length; i++){
    image(cursor,circleX[i],20,28/1.4,40/1.4);
  }
}
