void setup() {
  boolean windowsIsDirty = true;

  for (
    // Starting assignment
    int numberOfWipesDone = 0; 
    // Condition to check before each iteration
    numberOfWipesDone < 10; 
    // Action to take after each iteration
    numberOfWipesDone++
    ) {
    println("I've wiped " + numberOfWipesDone + " times.");
    println("So I'm wiping once more!");
    println("Now I've wiped " + (numberOfWipesDone + 1) + " times.");
    println();
  }

  println("Done wiping!");
}
