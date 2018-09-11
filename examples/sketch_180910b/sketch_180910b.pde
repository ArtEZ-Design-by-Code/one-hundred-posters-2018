void setup() {
	size(594, 841);
	background(255);
	fill(255);
	stroke(0);
}

void draw() {
	// Draw rectangles using their center as origin, instead of the top left corner
	rectMode(CENTER);

	// If, and only if, our mouse is pressed...
	if (mousePressed == true) {
		// Draw a rectangle at the current mouse location
		rect(mouseX, mouseY, 50, 50);
	}
}
