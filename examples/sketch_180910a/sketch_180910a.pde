// Import the code library for creating PDFs
import processing.pdf.*;

void setup() {
	size(594, 841);

	// Begin "recording" everything we draw to the screen
	beginRecord(PDF, "mySketch.pdf");

	background(0);
}

void draw() {
	// Draw things to the screen
	fill(random(255), random(255), random(255));
	noStroke();

	ellipse(random(width), random(height), 50, 50);
}

void keyPressed() {
	// When we press any key, end the recording (which outputs the PDF file)
	endRecord();

	// Also, for quicker reference, output a PNG file
	save("mySketch.png");
}
