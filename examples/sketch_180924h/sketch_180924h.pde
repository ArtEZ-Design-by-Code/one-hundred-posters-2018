void setup() {
  size(1024, 1024);
  background(0, 0, 255);

  stroke(255);
  noFill();
  strokeWeight(6);

  pushMatrix();
  translate(width / 2, height / 2);
  pushMatrix();
  rotate(radians(45));

  line(0, 0, 500, 0);
  popMatrix();
  popMatrix();

  line(0, 0, 500, 0);
}
