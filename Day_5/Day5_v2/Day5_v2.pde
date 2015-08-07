void setup(){
  size(800,600);
  background(0);
}

void draw(){
  noStroke();
  for(int i = 0; i < width; i = i + 30){
    for(int j = 0; j < height; j = j+30){
      fill(j,250,j+100);
      rect(j,i,20,20);
      fill(0);
      stroke(10);
      line(j,i,mouseX,mouseY);
    }
//    fill(i,250,i+100);
//    rect(200,i,200,20);
  }
}
