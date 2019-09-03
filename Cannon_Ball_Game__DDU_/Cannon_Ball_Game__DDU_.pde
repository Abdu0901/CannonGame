//Cannon Game by Abdullah and Albert
public float angle = -PI/4, force = 5;
int c, e;
int state = 0;
boolean canSpawn = true, canShoot = true;

CannonBall ball = new CannonBall();

Cannon cannon = new Cannon();
ArrayList<CannonBall> cannonBalls = new ArrayList<CannonBall>(10);
//CannonBall[] cannonBalls = new CannonBall[10];
float canShootCounter;

//Setup of screen size and framerate
void setup() {
  size(1000, 500);
  frameRate(60);
  ball.ballPos.set(100,500);
}

//Detects which keys are pressed and proceeds to call the pressed key's function
void detectKey() {
  if (key == 's')cannon.moveDown();
  if (key == 'w')cannon.moveUp();
<<<<<<< HEAD
=======
  if (key == ' ')cannon.fire();
>>>>>>> bf013fa41c4b56012ed63f1b17313a086387c58e
}

void draw() {
  drawBackGround();
  c = cannonBalls.size();
  cannon.drawCannon();
  for (CannonBall a : cannonBalls) {
    a.update();
  }
<<<<<<< HEAD
  /*if(c <= 10 && canSpawn == true){
    cannonBalls.add(new CannonBall());
  }*/
  
  
=======
  if (c <= 5 && canSpawn == true) {
    cannonBalls.add(new CannonBall());
  }

>>>>>>> bf013fa41c4b56012ed63f1b17313a086387c58e
  if (keyPressed)detectKey();
}

//Draws background and the grass with colors and size
void drawBackGround() {
  background(130, 210, 230);
  fill(65, 250, 85);
  noStroke();
  rect(0, 450, 1000, 50);
}
