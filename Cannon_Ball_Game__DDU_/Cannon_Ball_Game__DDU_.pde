//Cannon Game by Abdullah and Albert
public float angle = -PI/4, force = 5;
int c, e;
int gameScreen = 0;
boolean canSpawn = true, canShoot = true;
float canShootCounter;

CannonBall ball = new CannonBall();

//Cannon Function
Cannon cannon = new Cannon();
ArrayList<CannonBall> cannonBalls = new ArrayList<CannonBall>(10);

//Setup of screen size and framerate
void setup() {
  size(1000, 500);
  frameRate(60);
  ball.ballPos.set(100, 500);
}

//Detects which keys are pressed and proceeds to call the pressed key's function
void detectKey() {
  if (key == 's'){
    cannon.moveDown();
    ball.moveDown(); 
  }if (key == 'w'){
    cannon.moveUp();
    ball.moveUp();
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
  c = cannonBalls.size();
  cannon.drawCannon();
  for (CannonBall a : cannonBalls) {
    a.update();
  }

  if (c <= 10 && canSpawn == true) {
    cannonBalls.add(new CannonBall());
  }
  
  /*if(c <= 10 && canSpawn == true){
   cannonBalls.add(new CannonBall());
   }*/

  if (c <= 5 && canSpawn == true) {
    cannonBalls.add(new CannonBall());
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
