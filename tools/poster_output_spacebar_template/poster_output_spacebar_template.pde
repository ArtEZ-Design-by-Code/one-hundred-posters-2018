void posterSetup() {
  // Your code goes here!
  // This gets run once!
}

void posterDraw() {
  // Your code goes here!
  // This gets repeated every frame
}

////
// Everything from here on is the template to save your output. It wil save when you press the spacebar. It will also exit the sketch!
////

import processing.pdf.*;

String filename = "poster-" + year() + "." + month() + "." + day() + "-" + hour() + "." + minute() + "." + second();

void setup() {
  // Set the canvas size
  size(594, 841);

  // Generate a file name composed of the current date and time

  // Begin the recording of an PDF file
  beginRecord(PDF, sketchPath("output/pdf/" + filename + ".pdf"));

  // Run the posterCode() function, which contains your drawing
  posterSetup();
}

void draw() {
  posterDraw();
}

// This will run when a key is pressed
void keyPressed() {
  // If the key you pressed is the spacebar
  if (key == ' ') {
    // Finish recording the SVG and save it
    endRecord();

    // Save a PNG screenshot
    save(sketchPath("output/png/" + filename + ".png"));

    // Exit the sketch
    exit();
  }
}