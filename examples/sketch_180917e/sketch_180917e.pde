void setup() {
  size(1024, 1024);
  background(255);
  stroke(0);
  fill(255);
}

void draw() {
  background(255);

  // Nested for-loops allow us to create a grid! Check that you understand this.

  for (int y = 0; y <= height; y += height / 32) {
    for (int x = 0; x <= width; x += width / 32) {
      fill(x, random(255), y);
      rect(x, y, width / 32, height / 32);
    }
  }
}
