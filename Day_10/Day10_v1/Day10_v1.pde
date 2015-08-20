import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

AudioPlayer soundShoot;

Player ship;
boolean keyLeft;
boolean keyRight;
boolean keyShoot;

int score;
int maxAsteroids;
int asteroidTiming;
float asteroidSpeed;

PVector startPosition;
ArrayList<Shot> shots;
ArrayList<Asteroid> asteroids;

void setup() {
  size(1000, 800);
  background(10);
  startPosition = new PVector(width/2, height * 0.9);
  ship = new Player(startPosition);
  shots = new ArrayList<Shot>();
  asteroids = new ArrayList<Asteroid>();
  minim = new Minim (this);
  soundShoot = minim.loadFile("Laser.wav");
}

void draw() {
  
  fill(10, 80);
  rect(0, 0, width, height);
  
  ship.display();
  ship.update();
  
  fill(200, 255, 255, 180);
  textAlign(CENTER);
  textSize(width/5);
  String scoreText = "SCORE: " + score;
  text(scoreText, width/2, height/2);
  
  if (score > 10){
    String goodjob = "Good job!";
    text(goodjob, width/2,height/4);
  }
  
  for (int i = 0; i < shots.size(); i ++){
    shots.get(i).update();
    shots.get(i).display();
    shots.get(i).destroyShot(i);
  }
  maxAsteroids = score + 3;
  asteroidTiming = 30 - score;
  asteroidSpeed = random(score * 0.25 + 1, score*0.25 + 4);
  if(asteroids.size() < maxAsteroids && frameCount % asteroidTiming == 0){
    asteroids.add(new Asteroid (random(0, width), 0, asteroidSpeed));
  }
  
  for (int i = 0; i < asteroids.size(); i++){
    Asteroid tempAst = asteroids.get(i);
    tempAst.update();
    tempAst.display();
    if (tempAst.y > height){
      asteroids.remove(i);
    }
    for (int j = 0; j < shots.size(); j++){
      tempAst.shotCollision(shots.get(j), tempAst, i, j);
    }
    if (ship.alive == true){
      tempAst.playerCollision(ship, tempAst);
    }
    
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      keyLeft = true;
    }
    if (keyCode == RIGHT) {
      keyRight = true;
    }
  }
  if (key == ' ') {
    keyShoot = true;
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      keyLeft = false;
    }
    if (keyCode == RIGHT) {
      keyRight = false;
    }
  }
  if (key == ' ') {
    keyShoot = false;
  }
}

void restart(){
  asteroids.clear();
  score = 0;
  asteroids.add(new Asteroid(random(width),0, random(2,6)));
  asteroids.add(new Asteroid(random(width),0, random(2,6)));
  asteroids.add(new Asteroid(random(width),0, random(2,6)));
  
  ship.location.x = width/2;
  ship.location.y = height * 0.9;
  ship.alive = true;
}