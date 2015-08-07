PImage pika;
PFont font;
boolean isValueGrowing;
int growing;
float speed;
float sizeBig;
float sizeSmall;
float radiusFast;
float radiusSlow;
float speedFast;
float speedSlow;

void setup(){
  size(800,600);
  font = loadFont("EuclidFraktur-100.vlw");
  textFont(font,100);
  pika = loadImage("pika.png");
  radiusFast = 20;
  speedFast = 0.5;
  sizeBig = width;
  sizeSmall = width/4;
  radiusSlow = 100;
  speedSlow = 0.005;
}

void draw(){

  radiusFast = abs(sin(frameCount*speedFast)*sizeBig);
  radiusSlow = abs(sin(frameCount*speedSlow)*sizeSmall);
  
//  if (isValueGrowing == false){
//    growing +=1;
//  }
//  else if (growing == 200){
//    isValueGrowing = false;
//  }
//  if (isValueGrowing == true){
//    growing -=1;
//  }
//  else if(growing == 900){
//    isValueGrowing = true;
//  }
  
  imageMode(CENTER);
//  image(pika,width/2,height/2,growing,growing);
  if (mousePressed){
    background(0);
    image(pika,width/2,height/2,radiusFast,radiusFast);
    fill(255);
    text("Hello", random(0,600),random(0,600));

  }
  else {
    background(255,70,90);
    image(pika,width/2,height/2,radiusSlow,radiusSlow);
  }
  if (keyPressed){
    if (key == 's'){
      saveFrame();
    }
  }
}
