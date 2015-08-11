int[] circleX = {
  100,300,500,700
};

void setup(){
  size(1000,600);
  circleX = new int[4]; //declaring the size of the array
//  circleX[0] = 100;
//  circleX[1] = 300;
//  circleX[2] = 500;
//  circleX[3] = 700;
}

void draw(){
//  ellipse(circleX[0],height/2,100,100);
//  ellipse(circleX[1],height/2,100,100);
//  ellipse(circleX[2],height/2,100,100);
//  ellipse(circleX[3],height/2,100,100);
  for (int i = 0; i < 4;i++){
    ellipse(circleX[i], height/2,100,100);
  }
}
