PImage cursor1;
PImage cursor2;
PImage cursor3;
PImage cursor4;
PImage google;
float counter = 100;

void setup(){
  size(displayWidth,displayHeight);
  background(255);
  cursor1 = loadImage("cursor1.png");
  cursor2 = loadImage("cursor2.png");
  cursor3 = loadImage("cursor3.png");
  cursor4 = loadImage("cursor4.png");
  google = loadImage("Google.png");
  counter++;
//  for(int i = width/2; i < width; i = i + 40){
//    for(int j = height/2; j < height; j = j+40){
////      scale(counter/100);
//      image(cursor4,i,j,(28/1.7),(40/1.7));
//    }
//  }
//  for(int i = 0; i < width/2; i = i + 40){
//    for(int j = 0; j < height/2; j = j+40){
////      scale(counter/100);
//      image(cursor1,i,j,(28/1.7),(40/1.7));
//    }
//  }
//  for(int i = width/2; i < width; i = i + 40){
//    for(int j = 0; j < height/2; j = j+40){
////      scale(counter/100);
//      image(cursor2,i,j,(28/1.7),(40/1.7));
//    }
//  }
//  for(int i = 0; i < width/2; i = i + 40){
//    for(int j = height/2; j < height; j = j+40){
////      scale(counter/100);
//      image(cursor3,i,j,(28/1.7),(40/1.7));
//    }
//  }

}

void draw(){
  noStroke();
  counter = (counter*1.01)+1;
//  imageMode(CENTER);
//  image(google, width/2.03,height/1.97);
    for(int i = width/2; i < width; i = i + 40){
    for(int j = height/2; j < height; j = j+40){
//      scale(counter/100);
      image(cursor4,i+(counter/10),j+(counter/10),(28/1.7),(40/1.7));
    }
  }
  for(int i = 0; i < width/2; i = i + 40){
    for(int j = 0; j < height/2; j = j+40){
//      scale(counter/100);
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
//      scale(counter/100);
      image(cursor3,i+(counter/-10),j-(counter/-10),(28/1.7),(40/1.7));
    }
  }
}
