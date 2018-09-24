void setup() {
  // Try not to use a while loop, unless absolutely neccessary!
  boolean windowIsDirty = true;
  int numberOfWipesDone = 0;

  while (windowIsDirty) {
    if (numberOfWipesDone < 10) {
      wipeWindow();

      numberOfWipesDone++;
    } else {
      windowIsDirty = false;
    }
  }

  println("Done wiping!");
}

void wipeWindow() {
  println("Wiping!");
}
