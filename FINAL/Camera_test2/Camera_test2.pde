PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;

int state = 0;

void setup(){
  size(displayWidth, displayHeight, P3D);
  background(0);
  cursor1 = loadImage("cursor1.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
}

void draw(){
  
  if (mouseY<height/4){
    state=0;
  }
  
  if (mouseY>height/4){
    state=1;
  }
  if (mouseY>(height/4)*2){
    state=2;
  }
  
  if (mouseY>(height/4)*3){
    state=3;
  }
  
  if (state == 0){
  background(0);
  float x = width/2;
  float y = height/2;
  float z = 0;
  translate(x,y,z);
  imageMode(CENTER);
  image(cursor1,0,0);
  }
  if (state == 1){
  background(0);
  float x = width/2;
  float y = height/2;
  float z = 0;
  translate(x,y,z);
  imageMode(CENTER);
  image(cursor2,0,0);
  }
  if (state == 2){
  background(0);
  float x = width/2;
  float y = height/2;
  float z = 0;
  translate(x,y,z);
  imageMode(CENTER);
  image(cursor3,0,0);
  }
  if (state == 3){
  background(0);
  float x = width/2;
  float y = height/2;
  float z = 0;
  translate(x,y,z);
  imageMode(CENTER);
  image(cursor4,0,0);
  }
}