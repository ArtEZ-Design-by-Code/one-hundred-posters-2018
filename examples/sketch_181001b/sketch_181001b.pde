Car myFerrari;
Car myLambo;
Car mySaab;

void setup() {
  size(500, 500);
  background(255);
  
  myFerrari = new Car("Ferrari");
  myLambo = new Car("Lamborghini");
  mySaab = new Car("Saab");
}

void draw() {
  background(255);
  
  myFerrari.move();
  myFerrari.display();
  
  myLambo.move();
  myLambo.display();
  
  mySaab.move();
  mySaab.display();
}

class Car {
  String make; // FIELD
  float x;
  float y;
  float speed;
  color carColor;
  
  Car(String inputMake) {             // CONSTRUCTOR
    this.x = 0;
    this.y = random(height);
    this.make = inputMake;
    this.speed = random(1, 10);
    this.carColor = color(random(255), 0, random(255));
    
    //println(this.make);
  }
  
  void move() { // METHOD
    this.x += this.speed;
    
    if (this.x > width) {
      this.x = 0;
    }
  }
  
  void display() {
    fill(this.carColor);
    noStroke();
    rectMode(CENTER);
    rect(this.x, this.y, 30, 10);
    
    fill(0);
    text(this.make, this.x, this.y - 10);
  }
}
