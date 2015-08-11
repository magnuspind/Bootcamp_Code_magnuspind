PImage cursor;
float x,y,z;
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
  if (counter > 100){
    noLoop();
  }
  for (int i = 0; i < circleX.length; i++){
    translate(displayWidth/2,displayHeight/2);
    rotate(counter/1000);
    image(cursor,circleX[i]/300,circleY[i]/300,28/1.4,40/1.4);
  }
//    for (int i = 0; i < circleX.length; i++){
//    translate(displayWidth/2,displayHeight/2);
//    rotate(counter/1000);
//    image(cursor,circleX[i]/300,circleY[i]/300,28/1.4,40/1.4);
//  }
}
