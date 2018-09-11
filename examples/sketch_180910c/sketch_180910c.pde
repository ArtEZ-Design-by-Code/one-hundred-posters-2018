// A variable with its type, name and value.
String filename = "sketch.png";

// Another variable.
color backgroundColor = color(255, 255, 0);

void setup() {
	size(400, 800);

	// Use the variable we created above
	background(backgroundColor);
	fill(255);
	stroke(0);

	// We can use operators (+ - * / ++ -- etc...) to combine and alter variables
	int rectWidth = width - 40;
	float goldenRatio = 1.61803398875;
	float secondRectWidth = rectWidth / goldenRatio;

	rect(20, 20, rectWidth, height - 40);
	rect(20, 20, secondRectWidth, height - 40);

	save(filename);
}
