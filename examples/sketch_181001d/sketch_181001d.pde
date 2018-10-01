ArrayList<Blob> myBlobs = new ArrayList<Blob>();

void setup() {
  size(500, 500);
  background(255);
  
  for (int i = 0; i < 50; i++) {
    Blob myBlob = new Blob();
    myBlobs.add(myBlob);
  }
}

void draw() {
  background(255);
  
  for(Blob myBlob: myBlobs) {
    myBlob.move();
    myBlob.display();
  }
}

class Blob {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  
  Blob() {
    this.x = random(width);
    this.y = random(height);
    this.xSpeed = random(-2, 2);
    this.ySpeed = random(-2, 2);
  }
  
  void move() {
    this.x += this.xSpeed;
    this.y += this.ySpeed;
    
    if (this.x < 0) {
      this.x = width;
    }
    
    if (this.y < 0) {
      this.y = height;
    }
    
    if (this.x > width) {
       this.x = 0;
    }
    
    if (this.y > height) {
      this.y = 0;
    }
  }
  
  void display() {
    noStroke();
    fill(0);
    ellipse(this.x, this.y, 5, 5);
    
    for (Blob thatBlob: myBlobs) {
      if (this != thatBlob) {
        float distance = dist(this.x, this.y, thatBlob.x, thatBlob.y);
        
        if (distance < 100) {
          stroke(0);
          noFill();
          line(this.x, this.y, thatBlob.x, thatBlob.y);
        }
      }
    }
  }
}
