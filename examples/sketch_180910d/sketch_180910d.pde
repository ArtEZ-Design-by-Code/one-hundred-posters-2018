float rectWidth = 0.0002;

void setup() {
	size(500, 500);
	background(0);
	fill(255);
	noStroke();
}

void draw() {
	rect(20, 20, rectWidth, height - 40);

	// Using an operator, we create a small animation.
	rectWidth *= 1.1;
}
