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
  camera(eyeX, eyeY, -(eyeZ), centerX, centerY, centerZ, upX, upY, upZ);

  // SCENE VISIBILITY
  if (eyeZ > 500){
    state = 0;
  }
  if (eyeZ < 350){
    state = 1;
  }
  //if (eyeZ < 150){
  //  state = 2;
  //}  
  
  
  // FIRST SCENE
  
  if (state == 0){
  background(0);
  x = width/2;
  y = height/2;
  z = 0;
  translate(x,y,z);
  imageMode(CENTER);
  image(google, 0,0);
  }
  
  //// SECOND SCENE
  
  //if (state == 1){
  //int counter = 0;
  //background(0);
  //x = width/2;
  //y = height/2;
  //z = -400;
  //imageMode(CENTER);
  //translate(x,y,z);
  //image(cursor1, 0,0);
  //}
  
  // THIRD SCENE
  
  if (state == 1){
  x = 0;
  y = 0;
  z = -200;
  translate(x,y,z);
  counter = (counter*1.002)+1;
  for(int i = width/2; i < width; i = i + 40){
   for(int j = height/2; j < height; j = j+40){
   image(cursor4,i,j,(28/1.7),(40/1.7));
  }
  }
  for(int i = 0; i < width/2; i = i + 40){
  for(int j = 0; j < height/2; j = j+40){
   image(cursor1,i,j,(28/1.7),(40/1.7));
  }
  }
  for(int i = width/2; i < width; i = i + 40){
  for(int j = 0; j < height/2; j = j+40){
   image(cursor2,i,j,(28/1.7),(40/1.7));
  }
  }
  for(int i = 0; i < width/2; i = i + 40){
  for(int j = height/2; j < height; j = j+40){
   image(cursor3,i,j,(28/1.7),(40/1.7));
      }
    }
  }
  
  println(eyeZ);

  
  
  
  
  
  
  
}




void keyPressed(){
  if (key == CODED) {
    if (keyCode == UP) {
      eyeZ += 5;
    } else if (keyCode == DOWN) {
      eyeZ -= 5;
    } 
  } else {
    eyeZ = 0;
  }
}