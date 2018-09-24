void setup() {
  size(500, 500);
  background(0, 0, 255);
  
  fill(255);
  noStroke();
  
  ellipse(0, 0, 100, 100);
  
  translate(width, height);
  
  ellipse(0, 0, 100, 100);
  
  translate(-width / 2, -height / 2);
  
  ellipse(0, 0, 100, 100);
}
