PImage google;
PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage browserFive;

float x,y,z;
float globalTime = millis();
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
  
  
  
  //MUSIC PLAY
  
  
  //CAMERA CONTROL
  float moveForward = -counter+1000; //Decrease moves forward
  
  camera(width/2.0, height/2.0, 5000 / tan(PI*30.0 / 180.0), width/2.0, height/2.0, 0, 0, 1, 0);
  

  //SCENE 1: Google button startposition = 5000;
  if (state == 0){
  background(0);
  x = width/2;
  y = height/2;
  z = 5000;
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
  z = 1000+counter++*20;
  imageMode(CENTER);
  translate(x,y,z);
  image(cursor1, 0,0);
  }
  
  //SCENE 2B: Computer mice flying by Two
  if (state == 2){
  background(0);
  counter = 0+counter++;
  x = 600+(counter--*10);
  y = -600+(counter--*10);
  z = 1000+counter++*10;
  imageMode(CENTER);
  translate(x,y,z);
  image(cursor1, 0,0);
  }
  
  //SCENE 3A: Computer mice pattern: -counter+1000 > 0 = true
  if (state == 3){
    pushMatrix();
    x = 
    y =
    z = ;
    translate(x,y,z);
    
  counter = (counter*1.002)+1;
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
  
  //SCENE 3B: Computer mice pattern: -counter+1000 > 0 = true
  if (state == 4){
  counter = (counter*1.002)+1;
   for(int i = width/2; i < width; i = i + 10){
     for(int j = height/2; j < height; j = j+10){
     image(cursor4,i-(counter/-10),j+(counter/-10),(28/1.7),(40/1.7));
   }
  }
  for(int i = 0; i < width/2; i = i + 10){
   for(int j = 0; j < height/2; j = j+10){
     image(cursor1,i+(counter/-10),j+(counter/-10),(28/1.7),(40/1.7));
   }
  }
  for(int i = width/2; i < width; i = i + 10){
   for(int j = 0; j < height/2; j = j+10){
     image(cursor2,i+(counter/10),j-(counter/10),(28/1.7),(40/1.7));
   }
  }
  for(int i = 0; i < width/2; i = i + 10){
   for(int j = height/2; j < height; j = j+10){
     image(cursor3,i-(counter/10),j-(counter/10),(28/1.7),(40/1.7));
   }
  }
  }
  
  
  //SCENE 4: Browser windows singing
  for (float x = 1; x < 80; x = x+0.7){
  imageMode(CENTER);
  //rotate(songData/400);
  image(browserFive,width/2,height/2,width/x,height/x);
  }
  
  
  //SCENE 5:
}