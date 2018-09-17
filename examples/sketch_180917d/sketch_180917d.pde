void setup() {
  size(1024, 1024);
  background(255);
  noStroke();

  // Set the color mode to HSB for the rest of the program. Check Photoshop!
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(0, 0, 100);

  // For loop: initial variable; condition to check before each iteration; action to take after each iteration. In this case: we start with 0 confettis, we keep going while the number of confettis is less than 1000, and after each iteration we increase the number of confettis by one (like a counter).
  
  for (int numberOfConfettis = 0; numberOfConfettis < 1000; numberOfConfettis++) {
    fill(random(360), 60, 100);
    ellipse(random(width), random(height), 40, 40);
  }  
}
