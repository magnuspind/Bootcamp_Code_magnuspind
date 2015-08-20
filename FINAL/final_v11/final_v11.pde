//SONG DATA
import ddf.minim.*;
Minim minim;
AudioPlayer song;

//CAMERA RELATED
float counter = 0;
float songData;
float eyeX;
float eyeY;
float eyeZ;
float centerX;
float centerY;
float centerZ;
float upX;
float upY;
float upZ;

int state = 0;

//IMAGES
PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage google;

//OBJECT RELATED
int x;
int y;
int z;


void setup(){
  size(displayWidth,displayHeight, P3D);
  minim = new Minim(this);                                //SONG DATA
  song = minim.loadFile("Internettet.mp3");
  
  //CAMERA RELATED
  eyeX = width/2.0;
  eyeY = height/2.0;
  eyeZ = (height/2)/tan(PI*30.0 / 180.0);
  centerX = width/2.0;
  centerY = height/2.0;
  centerZ = 0;
  upX = 0;
  upY = 1;
  upZ = 0;

  cursor1 = loadImage("cursor1.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
  google = loadImage("Google.png");
}

void draw(){
  //MUSIC - PLAY
  song.play();
  for(int i = 0; i < song.bufferSize(); i++){              //SONG DATA
  songData = abs(song.mix.get(i));                         //SONG DATA 
  }
  
  // SCENE VISIBILITY
  if (eyeZ > 21000){
    state = 1;
  }
  
  // CAMERA SETUP
  counter = millis();
  eyeZ = eyeZ+songData*100+(counter/4000);
  camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);
  
  background(0);
  x = width/2;
  y = height/2;
  z = 1000;
  translate(x,y,z);
  imageMode(CENTER);
  image(google, 0,0);
  
  pushMatrix();
  x = width/120;
  y = height/120;
  z = 1500;
  translate(x,y,z);
  imageMode(CENTER);
  image(google, 0,0);
  popMatrix();
  
  x = width/120;
  y = height/120;
  z = 3000;
  translate(x,y,z);
  imageMode(CENTER);
  image(google, 0,0);

  
  x = width/120;
  y = height/120;
  z = 6000;
  translate(x,y,z);
  imageMode(CENTER);
  image(cursor1, 0,0);

  //SCENE 2
  if (state == 1){
  counter = 0;
  x = width/200;
  y = height/200;
  z = 2000;
  translate(x,y,z);
  for(int i = 2000; i < width; i = i + 40){
   for(int j = 2000; j < height; j = j+40){
   image(cursor4,i,j,(28/1.7),(40/1.7));
   }
  }
  }


  println(eyeZ);
}