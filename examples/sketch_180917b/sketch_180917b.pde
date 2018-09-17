// Set some initial variables

float x = 0;
float xSpeed = 5;

float y = 0;
float ySpeed = 5;

float ballSize = 10;

void setup() {
  size(1920, 250);
  background(255);
  noStroke();
  fill(0);
}

void draw() {
  // This creates a trail effect by drawing a semi-transparent rectangle over the scene, instead of setting the background on each frame.

  fill(255, 20);
  rect(0, 0, width, height);
  
  
  // Set our fill for our ball.
  fill(0);
  
  // Draw the ball
  ellipse(x, y, ballSize, ballSize);
  
  // If the ball is going to go off screen in any direction, change the speed. Check these statements carefully and make sure you understand them!

  if (x >= width - ballSize / 2) {
    xSpeed = -5;
  }
  
  if (x <= 0 + ballSize / 2) {
    xSpeed = 5;
  }
  
  if (y >= height - ballSize / 2) {
    ySpeed = -5;
  }
  
  if (y <= 0 + ballSize / 2) {
    ySpeed = 5;
  }
  

  // Add the speed to the coordinate
  x += xSpeed;
  y += ySpeed;
}
