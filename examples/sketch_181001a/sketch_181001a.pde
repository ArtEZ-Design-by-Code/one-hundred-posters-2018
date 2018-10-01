color[] myColors = {
  color(255, 128, 0),
  color(128, 255, 0),
  color(64, 73, 199),
  color(255, 12, 44)
};

void setup() {
  size(500, 500);
  background(0);
  
  noStroke();
  
  for(int i=0; i<50; i++) {
    float x = random(width);
    float y = random(height);
    
    int index = floor(random(myColors.length));
    
    fill(myColors[index]);
    
    ellipse(x, y, 30, 30);
  }
}
