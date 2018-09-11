void posterCode() {
  // Your code goes here!
}

////
// Everything from here on is the template to save your output.
////

import processing.pdf.*;

void setup() {
  // Set the canvas size
  size(594, 841);
  
  // Generate a file name composed of the current date and time
  String filename = "poster-" + year() + "." + month() + "." + day() + "-" + hour() + "." + minute() + "." + second();
  
  // Begin the recording of an SVG file
  beginRecord(PDF, sketchPath("output/pdf/" + filename + ".pdf"));
  
  // Run the posterCode() function, which contains your drawing
  posterCode();
  
  // Finish recording the PDF and save it
  endRecord();
  
  // Save a PNG screenshot
  save(sketchPath("output/png/" + filename + ".png"));
}