void setup() {
  size(1024, 1024);
  background(0, 0, 255);

  noStroke();

  translate(width / 2, height / 2);

  fill(0, 255, 0);
  ellipse(0, 0, 10, 10);

  fill(255);
  
  for (int angle = 0; angle < 180; angle+=12) {
    pushMatrix();
    rotate(radians(angle));
    
    ellipse(400, 0, 50, 50);
    popMatrix();
  }
  
  text("Hello world", 0, 0);
}

// RADIANS: A FULL CIRCLE 2 * PI
