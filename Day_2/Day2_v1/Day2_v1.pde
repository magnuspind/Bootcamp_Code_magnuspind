boolean isEqualToTen;
int number;

void setup(){
  size(800,600);
}

void draw(){
  number = 10;
  if (number == 10){
    isEqualToTen = true;
  }
  if (number != 10){
    isEqualToTen = false;
  }
  println(isEqualToTen);
}
