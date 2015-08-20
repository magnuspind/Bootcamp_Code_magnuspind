PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
float counter = 100;
float x,y,z;

void setup(){
  size(displayWidth,displayHeight, P3D);
  background(0);
  cursor1 = loadImage("cursor1.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
  counter++;
}

void draw(){
  counter = (counter*1.1)+1;
    for(int i = width/2; i < width; i = i + 40){
      for(int j = height/2; j < height; j = j+40){
        for(int k = 0; k < 1000; k = k + 40){ 
        z = k;
        translate(x,y,z);
        image(cursor4,i+(counter/10), j+(counter/10),(28/1.7),(40/1.7));
    }
   }
  }
  /*
    for(int i = 0; i < width/2; i = i + 40){
      for(int j = 0; j < height/2; j = j+40){
        for(int k = 0; k 
        image(cursor1,i+(counter/10),j+(counter/10),(28/1.7),(40/1.7));
    }
  }
  */
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