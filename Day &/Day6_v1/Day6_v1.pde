PImage browserOne;
PImage browserTwo;
PImage browserThree;

void setup(){
  size(1200,600);
  background(0);
}

void draw(){
  noStroke();
  for(int i = 0; i < width; i = i + 10){
    for(int j = 0; j < height; j = j+10){
      fill(j,10,j+100);
      rect(j,i,20,20);
    }
  }
}
