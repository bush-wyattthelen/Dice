void setup() {
  size(615, 615);
  rectMode(CENTER);
  textAlign(CENTER);

  printAll();
}

void draw() {}

void printAll() {
  
  int tally = 0;
  
  // Create and show die, excluding two bottom center dice
  
  for (int i = 45; i < height; i += 75) {
    for (int j = 45; j < width; j = (!(i == 570 && j == 195)) ? j + 75 : j + 225) {
      int tempFace = (int)(Math.random() * 6 + 1);
      Die tempDie = new Die(j, i, tempFace);
      tally += tempFace;
      tempDie.show();
    }
  }
  
  // Create squares in place of bottom center dice
  // Left displays tally, right works as a reroll button
  
  fill(255);
  rect(270, 570, dieSize, dieSize);
  rect(345, 570, dieSize, dieSize);
  
  fill(0);
  textSize(18);
  
  text("Tally:", 270, 568);
  text(tally, 270, 586);
  
  text("RE-", 345, 568);
  text("ROLL", 345, 586);
}

void mouseClicked() {
  if (mouseX >= 315 && mouseX <= 375 && mouseY >= 540 && mouseY < 600) {
    printAll();
  }
}
