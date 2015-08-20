PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage google;
PImage browserFive;
float counter = 100;
float zPos = -1000;

int state = 0;


void setup(){
  size(displayWidth,displayHeight, P3D);
  background(0);
  cursor1 = loadImage("cursor1.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
  google = loadImage("Google.png");
  browserFive = loadImage("browserFive.png");
  counter++;
  
}

void draw(){
  noStroke();
  
  if (millis()>30000){
    state=1;
  }
  if (state == 0){
  camera(width/2.0, height/2.0, mouseY*6 / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);

  
  counter = (counter*1.01)+1;
    for(int i = width/2; i < width; i = i + 40){
    for(int j = height/2; j < height; j = j+40){
      
      image(cursor4,i+(counter/10),j+(counter/10),(28/1.7),(40/1.7));
    }
  }
  for(int i = 0; i < width/2; i = i + 40){
    for(int j = 0; j < height/2; j = j+40){
      image(cursor1,i+(counter/10),j+(counter/10),(28/1.7),(40/1.7));
    }
  }
  for(int i = width/2; i < width; i = i + 40){
    for(int j = 0; j < height/2; j = j+40){
      image(cursor2,i+(counter/-10),j-(counter/-10),(28/1.7),(40/1.7));
    }
  }
  for(int i = 0; i < width/2; i = i + 40){
    for(int j = height/2; j < height; j = j+40){
      image(cursor3,i+(counter/-10),j-(counter/-10),(28/1.7),(40/1.7));
    }
  }
}
  if(state == 1){
    background(0);
  for (float x = 1; x < 80; x = x+0.7){
  imageMode(CENTER);
  //rotate(songData/400);
  image(browserFive,width/2,height/2,width/x,height/x);
  }    
}
}