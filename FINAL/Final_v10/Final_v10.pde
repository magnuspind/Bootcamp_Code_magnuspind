PImage google;
PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage browserFive;

int state = 0;

float counter = 0;

int x;
int y;
int z;

// CAMERA
float eyeX;
float eyeY;
float eyeZ;
float centerX;
float centerY;
float centerZ;
float upX;
float upY;
float upZ;

float zPos;

void setup(){
  size(800, 600, P3D);
  eyeX = width/2.0;
  eyeY = height/2.0;
  eyeZ = (height/2)/tan(PI*30.0 / 180.0);
  centerX = width/2.0;
  centerY = height/2.0;
  centerZ = 0;
  upX = 0;
  upY = 1;
  upZ = 0;
  
  google = loadImage("Google.png");
  cursor1 = loadImage("cursor1.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
}

void draw(){

  // CAMERA SETUP
  camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);


  // SCENE 1:
  background(0);
  x = width/2;
  y = height/2;
  z = 0;
  translate(x,y,z);
  imageMode(CENTER);
  image(google, 0,0);
}


/*
void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      eyeZ ++;
    } else if (keyCode == DOWN) {
      eyeZ --;
    } 
  } else {
    eyeZ = 0;
  }
}
*/