int i;

void setup(){
  size(800,600);
  background(0);
}

void draw(){
//  background(0);
//  while (i <= mouseY){
//    fill(i, 250,mouseY);
//    rect(200,i,200,20);
//    i = i+10;
//  }
//  i = 100;
  i = 0;
  while(i<=width){
    int j = 100;
    while(j<=height){
      fill(i,100,250,100);
      rect(j,i,20,20);
      j = j + 50;
      println(j);
    }
    i = i + 50;
  }


}
