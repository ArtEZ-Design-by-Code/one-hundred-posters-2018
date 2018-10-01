String[] makes = {
  "Toyota",
  "Kia",
  "Renault",
  "Citroën",
  "Opel"
};

Car[] myCars;

void setup() {
  size(1920, 1080);
  background(255);
  
  myCars = new Car[1000];
  
  for (int i=0; i<myCars.length; i++) {
    int randomIndex = floor(random(makes.length));
    String make = makes[randomIndex];
    
    myCars[i] = new Car(make);
  }
}

void draw() {
  background(255);
  
  for (int i=0; i<myCars.length; i++) {
    myCars[i].move();
    myCars[i].display();
  }
}

class Car {
  String make;
  float x;
  float y;
  float speed;
  color carColor;
  
  Car(String inputMake) {
    this.x = 0;
    this.y = random(height);
    this.make = inputMake;
    this.speed = random(1, 10);
    this.carColor = color(random(255), 0, random(255));
  }
  
  void move() {
    this.x += this.speed;
    
    if (this.x > width) {
      this.x = 0;
    }
  }
  
  void display() {
    fill(this.carColor);
    noStroke();
    rectMode(CENTER);
    rect(this.x, this.y, 40, 10);
    
    fill(0);
    //text(this.make, this.x, this.y - 10);
  }
}
