//Cannon Game
public float angle;
int c, e;
boolean canSpawn = true;

Cannon cannon = new Cannon();
ArrayList<CannonBall> cannonBalls = new ArrayList<CannonBall>(10);
//CannonBall[] cannonBalls = new CannonBall[10];

void setup() {
  size(1000, 500);
  frameRate(60);
}

void detectKey() {
  if (key == 's')cannon.moveDown();
  if (key == 'w')cannon.moveUp();
  if (key == ' ')cannon.fire(); 
}

void draw() {
  drawBackGround();
  c = cannonBalls.size();
  cannon.drawCannon();
  for(CannonBall a : cannonBalls){
    a.update();
  }
  if(e <= 5 && canSpawn == true){
    cannonBalls.add(new CannonBall());
  }
  
  if(e >= 5){
   canSpawn = false; 
  }
  
  if (keyPressed)detectKey();
}


void drawBackGround() {
  background(130, 210, 230);
  fill(65, 250, 85);
  noStroke();
  rect(0, 450, 1000, 50);
}
