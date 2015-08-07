void setup(){
  size(400,400);
  background(255);
}

void draw(){
//  line(5,25,10,80);
//  line(73,24,23,61);
//  curve(5,25,10,80,73,24,23,61);
//  line(85,20,10,10);
//  line(90,90,15,80);
//  bezier(85,20,10,10,90,90,15,80);
//  arc(150,50,80,80,0,PI*QUARTER_PI,PIE);
  beginShape(QUAD_STRIP);
    vertex(0,200);
    vertex(10,300);
    vertex(400,200);
    vertex(100,20);
}
