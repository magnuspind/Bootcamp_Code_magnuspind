
float[] posX = new float[0];
float[] posY = new float[0];

void setup(){
  size(500, 500);
}

void draw(){
  background(255);
  for(int i = 0; i < posX.length; i++){
    strokeWeight(5);
    point (posX[i], posY[i]);
    
    if(i < posX.length - 1){  
      strokeWeight(1);  
      line(posX[i], posY[i], posX[i+1], posY[i+1]);
    }
  }
  println(posX.length);
  if (posX.length > 6){
      println(posX[5]);
  }
  
  
  
}

void mousePressed(){
  posX = append(posX, mouseX);
  posY = append(posY, mouseY);
}
