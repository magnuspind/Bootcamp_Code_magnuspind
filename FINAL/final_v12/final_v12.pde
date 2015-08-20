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
float rotate = 0;

//IMAGES
PImage cursor1;
PImage cursor1b;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage cursor4b;
PImage google;
PImage shape1;
PImage blackBgk;
PImage browserFive;



//OBJECT RELATED
float x;
float y;
float z;
int up;

void setup(){
  size(displayWidth,displayHeight, P3D);
  minim = new Minim(this);                                //SONG DATA
  song = minim.loadFile("Internettet.mp3");
  
  background(0);
  
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
  cursor1b = loadImage("cursor1b.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
  cursor4b = loadImage("cursor4b.png");
  google = loadImage("Google.png");
  shape1 = loadImage("shape1.png");
  blackBgk = loadImage("blackBgk.png");
  browserFive = loadImage("browserFive.png");

}

void draw(){
  //MUSIC - PLAY
  song.play();
  for(int i = 0; i < song.bufferSize(); i++){              //SONG DATA
  songData = abs(song.mix.get(i));                         //SONG DATA 
  }
  
  // SCENE VISIBILITY
  if (eyeZ > 21000){
  }
  
  // CAMERA SETUP
  counter = millis();
  eyeZ = eyeZ+songData*150+(counter/5000);
  camera(eyeX, eyeY, eyeZ, centerX, centerY, centerZ, upX, upY, upZ);
  
  //background(0);
  x = width/2;
  y = height/2;
  z = 1000;
  translate(x,y,z);
  imageMode(CENTER);
  image(google, 0,0);
  
  pushMatrix();
  x = width/120;
  y = height/120;
  z = 1800;
  translate(x,y,z);
  imageMode(CENTER);
  image(google, 0,0);
  popMatrix();
  
  x = width/120;
  y = height/120;
  z = 3500+up;
  translate(x,y,z);
  imageMode(CENTER);
  image(google, 0,0);

  
  x = width/120;
  y = height/120;
  z = 9000;
  translate(x,y,z);
//  rotate(up);
  imageMode(CENTER);
  image(cursor1b, songData*100,songData*100);

  x = width/120;
  y = height/120;
  z = 9100;
  translate(x,y,z);
 // rotate(up);
  imageMode(CENTER);
  image(cursor4b, songData*100,songData*100);

  x = width/120;
  y = height/120;
  z = 9200;
  translate(x,y,z);
//  rotate(up);
  imageMode(CENTER);
  image(cursor1b, songData*100,songData*100);


  ////SCENE 2
  //if (state == 1){
  //counter = 0;
  //x = -750;
  //y = -500;
  //z = 9000;
  //translate(x,y,z);
  //rotate(rotate);
  //for(int i = 0; i < width; i = i + 40){
  // for(int j = 0; j < height; j = j+40){
  // image(cursor4,i,j,(28/1.7),(40/1.7));
  // }
  //}
  //}
  counter = 0;
  x = -750;
  y = -500;
  z = 10000;
  translate(x,y,z);
//  rotate(up);
  for(int i = 0; i < width; i = i + 40){
   for(int j = 0; j < height; j = j+40){
   image(cursor4,i+songData*30,j+songData*30,(28/1.7),(40/1.7));
   }
  }
  //counter++;
  //x = sin(counter-1000);
  //y = sin(counter-750);
  //z = 11000;
  //translate(x,y,z);
  //rotate = rotate++;
  //rotate(rotate);
  //imageMode(CENTER);
  //image(shape1, width, height);

  x =0;
  y =800;
  z = 11300;
  translate(x,y,z);
 // rotate(rotate);
  imageMode(CENTER);
  image(blackBgk, 0,0);

  counter = 0;
  x = 700;
  y = -100;
  z = 11600;
  translate(x,y,z);
//  rotate(up);
  for(int i = 0; i < 10; i = i+40){
   for(int j = 0; j < 10; j = j+40){
   image(cursor4b,i+songData*30,j+songData*30,(28*1.7),(40*1.7));
   }
  }
  
  x = -750;
  y = -500;
  z = 11000;
  translate(x,y,z);
  for (float x = 1; x < 80; x = x+0.7){
  imageMode(CENTER);
  rotate(songData/100);
  image(browserFive,width/2,height/2,width/x,height/x);
  }
  
  
  //x = 0;
  //y = 0;
  //z = 3000;
  //translate(x,y,z);
  //for(int i = 0; i < width; i = i + 40){
  // for(int j = 0; j < height; j = j+40){
  // image(cursor2,i,j,(28/1.7),(40/1.7));
  // }
  //}




  println(upY);
}




//void keyPressed(){
// if (key == CODED) {
//   if (keyCode == UP) {
//     up = up+1;
//   } else if (keyCode == DOWN) {
//     up = up-1;
//   } 
// } else {
//   up = 0;
// }
//}