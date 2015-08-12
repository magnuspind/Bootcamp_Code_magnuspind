PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage google;
float counter;
float counter2;
float speed;


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
  background(0);
  noStroke();
  speed = 0.2;
  float timer;
  float wavySin = sin(frameCount * speed);
  float wavyCos = cos(frameCount * speed);
  counter = (wavySin*40);
  counter2 = (wavyCos*40);
    for(int i = 0; i < width; i = i+60){
      for(int j = 0; j < height; j = j+60){
//        image(cursor4,i+(counter/10),j+(counter/10),(28/1.7),(40/1.7));
        image(cursor4,i+((frameCount/2) + counter/10),j+((frameCount/2) + counter/10),(28/1.7),(40/1.7));

    }
  }
  for(int i = 0; i < width; i = i + 60){
    for(int j = 0; j < height; j = j+60){
      image(cursor1,i+((frameCount/2) + counter2/10)*-1,j+((frameCount/2)+counter2/10)*-1,(28/1.7),(40/1.7));
    }
  }
  for(int i = 0; i < width; i = i + 60){
    for(int j = 0; j < height; j = j+60){
      image(cursor2,i+((frameCount/2)+counter/-10),j-((frameCount/2)+counter/-10),(28/1.7),(40/1.7));
    }
  }
  for(int i = 0; i < width; i = i + 60){
    for(int j = 0; j < height; j = j+60){
      image(cursor3,i-((frameCount/2)+counter2/-10),j+((frameCount/2)+counter2/10*-1),(28/1.7),(40/1.7));
    }
  }
}
