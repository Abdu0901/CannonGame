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

void draw() {
  drawBackGround();
  cannon.drawCannon();

  if (keyPressed)detectKey();
}


void drawBackGround() {
  background(130, 210, 230);
  fill(65, 250, 85);
  noStroke();
  rect(0, 450, 1000, 50);
}
