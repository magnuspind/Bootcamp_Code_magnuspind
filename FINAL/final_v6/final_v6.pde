PImage google;
PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage browserFive;

float x,y,z;
float counter = 0;

int state = 0;

void setup(){
  size(displayWidth, displayHeight, P3D);
  background(0);
  google = loadImage("Google.png");
  cursor1 = loadImage("cursor1.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
  browserFive = loadImage("browserFive.png");
}

void draw(){
  
  //MOUSE POSITION = scene selector
  
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

  // MUSIC PLAY
  
  // CAMERA CONTROL
  
  // SCENE 1: GOOGLE BUTTON
  if (state == 0){
  background(0);
  x = width/2;
  y = height/2;
  z = 0;
  imageMode(CENTER);
  translate(x,y,z);
  image(google,20,30);
  }
  
  //SCENE 2: Computer mice flying by One
  if (state == 1){
  background(0);
  counter = 0+counter++;
  x = -600+(counter++*10);
  y = -600+(counter++*10);
  z = 0+counter++*20;
  imageMode(CENTER);
  translate(x,y,z);
  image(cursor1, 0,0);
  }







}