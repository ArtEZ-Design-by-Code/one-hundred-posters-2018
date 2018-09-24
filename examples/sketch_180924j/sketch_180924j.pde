String[] answers = {
  "Yes",
  "No",
  "Maybe",
  "Definitely",
  "Definitely Maybe",
  "Ask again later",
  "Possibly",
  "Not today",
  "Ask your mom"
};

int indexOfAnswer = 0;

void setup() {
  size(1024, 1024);
  background(255);
}

void keyPressed() {
  indexOfAnswer = floor(random(answers.length));
}

void draw() {
  fill(0);
  noStroke();
  
  translate(width / 2, height / 2);
  ellipse(0, 0, 700, 700);
  
  fill(255);
  textAlign(CENTER);
  textSize(48);
  text(answers[indexOfAnswer], 0, 24);
}
