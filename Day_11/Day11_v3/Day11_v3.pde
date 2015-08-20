import processing.video.*;
Movie myMovie;

void setup(){
  size(1440,900);
  myMovie = new Movie(this, "filename.mov");
  myMovie.play();
}

void draw(){
  image(myMovie, 0,0);
}

void movieEvent(Movie myMovie){
  myMovie.read();
}

void mousePressed(){
  myMovie.play();
}

void mouseReleased(){
  myMovie.pause();
}