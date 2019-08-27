//Cannon Game

Cannon cannon = new Cannon();
//CannonBall[] cannonBalls = new CannonBall[10];

void setup() {
  size(1000, 500);
  frameRate(60);
}

void shoot() {
  CannonBall[] cannonBalls = new CannonBall[10];
}

void detectKey() {
  if (key == 's')cannon.moveDown();
  if (key == 'w')cannon.moveUp();
  if (key == ' ')cannon.fire();
}
