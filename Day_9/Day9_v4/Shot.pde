class Shot{
  float x, y;
  float velocity;
  
  Shot(float x, float y, float velocity){
    this.x = x;
    this.y = y;
    this.velocity = velocity;
  }
  void display(){
    pushMatrix();
    translate(x , y);
    fill(200, 255, 255);
    ellipse(0, 0, 4, 4);
    popMatrix();
  }
  
  void update(){
    y += velocity;
  }
}