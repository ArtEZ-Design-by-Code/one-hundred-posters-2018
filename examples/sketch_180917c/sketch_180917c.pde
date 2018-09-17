void setup() {
  size(1024, 1024);
}

void draw() {
  // Different combinations produce different results. Try holding down your mouse and keys at the same time. Now change the if-statements underneath and check if you understand the logic before you run each sketch.

  if (mousePressed) {
    background(255, 0, 0);
  } else if (keyPressed) {
    background(0, 255, 0);
  } else {
    background(0, 0, 255);
  }
}
