int[] circleX = {
  100, 300, 500, 700
  };

void setup(){
  size(1000, 600);
//  circleX = new int[4];
//  circleX[0] = 100;
//  circleX[1] = 300;
//  circleX[2] = 500;
//  circleX[3] = 700;
}

void draw(){
//  ellipse(circleX[0], height/2, 100, 100);
//  ellipse(circleX[1], height/2, 100, 100);
//  ellipse(circleX[2], height/2, 100, 100);
//  ellipse(circleX[3], height/2, 100, 100);
  for (int i = 0; i < 4; i++){
    ellipse(circleX[i], height/2, 100, 100);
  }

}






//2nd example


int[] circleX = new int[10];
int[] circleY = new int[10];

void setup(){
  size(1000, 500);
//  for (int i = 0; i < circleX.length; i++) {
//    circleX[i] = int(random(0, width));    
//    circleY[i] = int(random(0, height));
//  }
}

void draw(){
//  background(0);
  noStroke();
  for (int i = 0; i < circleX.length; i++) {
    circleX[i] = int(random(0, width));    
    circleY[i] = int(random(0, height));
  }  
  for (int i = 0; i <circleX.length; i ++){
    float red = map(i, 0, 900, 0, 255);
    float green = map(i, 0, circleX.length, 0, 255);
    float blue = map(i, 0, circleX.length, 0, 255);
    fill(red, 0, 0);
    ellipse(circleX[i], circleY[i], 10, 10);
  }
    for (int i = 0; i <circleX.length; i ++){
    float red = map(i, 0, 900, 0, 255);
    float green = map(i, 0, circleX.length, 0, 255);
    float blue = map(i, 0, circleX.length, 0, 255);
    fill(0, green, 0);
    ellipse(circleX[i], circleY[i], 10, 10);
  }
  for (int i = 0; i <circleX.length; i ++){
    float red = map(i, 0, 900, 0, 255);
    float green = map(i, 0, circleX.length, 0, 255);
    float blue = map(i, 0, circleX.length, 0, 255);
    fill(0, 0, blue);
    ellipse(circleX[i], circleY[i], 10, 10);
  }

}



// 3rd example

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




int numOfPos = 50;
int[] xPos = new int[numOfPos];
int[] yPos = new int[numOfPos];
String[] section = {
  "section 1", 
  "section 2", 
  "section 3"
};

void setup(){
  size(500,500);
  for (int i = 0; i < numOfPos; i++){
    xPos[i] = 0;
    yPos[i] = 0;
  }
}

void draw(){
  background(255);
  fill(0);
  textSize(20);
  for (int i = 0; i < section.length; i ++){
    text(section[i], i * width/3 + 30, height/2);
  }
  noStroke();
//  background(255);
  for (int i = 0; i < numOfPos - 1; i++){
    xPos[i] = xPos[i+1];
    yPos[i] = yPos[i+1];
  }
  
  xPos[numOfPos - 1] = mouseX;
  yPos[numOfPos - 1] = mouseY;
 
  
  for(int i = 0; i < numOfPos; i++){
    float mappedColor;
    mappedColor = map(i, numOfPos, 0, 0, 255);
    if(mouseX >=0 && mouseX <= width/3){
          
    fill(mappedColor, 255, 255);
    ellipse(xPos[i], yPos[i], 10,10);
    }
    else if(mouseX >width/3 && mouseX < (width/3)*2){
      fill(255,mappedColor,255);
      ellipse(xPos[i], yPos[i], 10, 10);
    }
    else if(mouseX >(width/3)*2 && mouseX <= width){
      fill(255,255,mappedColor);
      rect(xPos[i], yPos[i], 20, 20);
    }
//    line(xPos[i], yPos[i], xPos[i-1], yPos[i+1]);
  } 

  println(xPos[0]);

}

