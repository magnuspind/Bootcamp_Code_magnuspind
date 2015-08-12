PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage google;
float counter = 100;
float speed;
float timeStop1 = 25;
float timeStop2 = 50;


void setup(){
  size(displayWidth,displayHeight);
  background(255);
  cursor1 = loadImage("cursor1.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
  google = loadImage("Google.png");
  counter++;
}

void draw(){
  background(255);
  noStroke();
  speed = 0.1;
  float timer;
  float wavySin = sin(frameCount * speed);
  float waveCos = cos(frameCount * speed);
  float stop = 0;
  if (frameCount < timeStop1){ 
  counter = (wavySin*100);
  }
  
    for(int i = width/2; i < width; i = i + 40){
      for(int j = height/2; j < height; j = j+40){
//        image(cursor4,i+(counter/10),j+(counter/10),(28/1.7),(40/1.7));
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
