// Set a canvas size
size(500, 500);

// Background color
background(255, 255, 0);

// Draw a circle
ellipse(50, 50, 25, 25);

// Draw an ellipse
ellipse(120, 50, 75, 25);

// Some rectangles
rect(400, 250, 250, 250);
rect(100, 100, 120, 120);

// Let's fill it up!
fill(255, 255, 0);
stroke(255, 0, 255);
strokeWeight(5);

// Some random shape
beginShape();

vertex(25, 50);
vertex(120, 120);
vertex(75, 400);
vertex(25, 75);

endShape(CLOSE);

// Set a different stroke color

stroke(0, 255, 0);

// Draw a line

line(0, 0, 500, 500);

// Set opacity

fill(0, 255, 0, 128);
noStroke();

// Draw a rectangle
rect(0, 0, 250, 250);
rect(125, 125, 250, 250);

// Draw a circle without a fill, but with a thick stroke
stroke(0);
strokeWeight(10);
noFill();
ellipse(250, 250, 500, 500);
