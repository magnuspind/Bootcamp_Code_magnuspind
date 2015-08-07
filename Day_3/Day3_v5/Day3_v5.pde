PImage pika;
PFont font;
boolean isValueGrowing;
int growing;

void setup(){
  size(800,600);
  font = loadFont("EuclidFraktur-100.vlw");
  textFont(font,100);
  pika = loadImage("pika.png");
}

void draw(){
  if (isValueGrowing == false){
    growing +=1;
  }
  else if (growing == 200){
    isValueGrowing = false;
  }
  if (isValueGrowing == true){
    growing -=1;
  }
  else if(growing == 900){
    isValueGrowing = true;
  }
  
  imageMode(CENTER);
//  image(pika,width/2,height/2,growing,growing);
  if (mousePressed){
    background(0);
    image(pika,width/2,height/2,growing,growing);
    fill(255);
    text("Hello", random(0,600),random(0,600));

  }
  else {
    background(255,70,90);
    image(pika,width/2,height/2,growing,growing);
  }
  if (keyPressed){
    if (key == 's'){
      saveFrame();
    }
  }
}
