// We're splitting the declaration and assignment of these variables
float x;
float y;

void setup() {
  // Set the size
  size(1024, 1024);

  // Assing the variables only after we've set the size
  x = width / 2;
  y = height / 2;

  background(255);
  fill(255);
  stroke(0);
}

void draw() {
  // Draw the circle
  ellipse(x, y, 6, 6);
 
  // Add a random number between -4 and 4 to the X and Y values of the coordinate (so the circle moves left or right and up or down)
  x += random(-4, 4);
  y += random(-4, 4);
}
