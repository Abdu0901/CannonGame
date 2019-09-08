//Cannon Game by Abdullah and Albert
public float angleC = -PI/4, angleB = -PI/4, force = 5;
int c, e;
int gameScreen = 0;
boolean canSpawn = true, canShoot = true;
float canShootCounter;

PVector ballPos = new PVector();
int ballSize = 20;
float gravity = 0.2;
float ballSpdVert = 0;
float airFriction = 0.0001;
float friction = 0.1;
float ballSpdHorizon = 10;

//CannonBall CannonBalls = new CannonBall();

//Cannon Function
Cannon cannon = new Cannon();
ArrayList<CannonBall> CannonBalls = new ArrayList<CannonBall>();

//Setup of screen size and framerate
void setup() {
  size(1000, 500);
  frameRate(60);
  //CannonBalls.ballPos.set(100, 500);
}

//Detects which keys are pressed and proceeds to call the pressed key's function
void detectKey() {
  if (key == 's'){
    cannon.moveDown();
  }if (key == 'w'){
    cannon.moveUp();
  }if (key == ' ')cannon.fire();
}

void draw() {
  if(gameScreen == 0){
   startScreen(); 
  } if(gameScreen == 1){
   mainScreen(); 
  } if(gameScreen == 2){
   gameOverScreen(); 
  }
}
  
  void startScreen(){
    gameScreen = 0;
    if (mousePressed == true){
     gameScreen = 1; 
    }
  }
  
  void mainScreen(){
    gameScreen = 1;
  drawBackGround();
  cannon.drawCannon();
  c = CannonBalls.size();
  for(CannonBall a : CannonBalls){
  a.drawBall();
  a.applyGravity();
  a.ballConstrain();
  a.applyHorizonSpd();
  }

  if (keyPressed)detectKey();
  }
  
  void gameOverScreen(){
    
  }

//Draws background and the grass with colors and size
void drawBackGround() {
  background(130, 210, 230);
  fill(65, 250, 85);
  noStroke();
  rect(0, 450, 1000, 50);
}
