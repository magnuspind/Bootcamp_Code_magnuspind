PFont font;
void setup(){
  size(800,600);
  font = loadFont("Wingdings3-100.vlw");
  textFont(font, 100);
  fill(0,0,0);
}

void draw(){
  fill(0,0,0);
  if(mousePressed){
  background(random(200,255),random(200,255),random(200,255));
  text("hellooo",mouseX,mouseY);
  }
  else{
    text("hoo",width/2,height/2);
  }
  if(keyPressed){
    if(key == 's'){
      saveFrame();
    }
  }
}
