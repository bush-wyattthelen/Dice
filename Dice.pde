int numColumns = 5;
int numRows = 5;

int tally = 0;
int numRolls = 0;

void settings() {
  size(75 * numColumns + 15, 75 * numRows + 15);
}


void setup() {
  rectMode(CENTER);
  textAlign(CENTER);

  printAll();
}

void draw() {}

void printAll() {
  
  background(#54B0FF);
  
  // Create and show die, excluding two bottom center dice
  
  numRolls++;
  
  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numColumns; j++) {
      if (i == numRows - 1 && j == (int)((float)numColumns / 2 - 1)) {
        if(numColumns % 2 == 1) j += 2;
        else j++;
      }
      else {
      Die tempDie = new Die(j * 75 + 45, i * 75 + 45);
      tempDie.roll();
      tempDie.show();
      }
    }
  }
  
  // Create squares in place of bottom center dice
  // Left displays tally, right works as a reroll button
  
  fill(255);
  rect(width / 2 - 37, 75 * numRows - 30, dieSize, dieSize);
  rect(width / 2 + 37, 75 * numRows - 30, dieSize, dieSize);
  
  fill(0);
  textSize(18);
  
  text("Avg:", width / 2 - 37, 75 * numRows - 32);
  text((int)((float)tally / numRolls), width / 2 - 37, 75 * numRows - 14);
  
  text("RE-", width / 2 + 37, 75 * numRows - 32);
  text("ROLL", width / 2 + 37, 75 * numRows - 14);
}

void mouseClicked() {
  if (mouseX >= width / 2 + 7 && mouseX <= width / 2 + 67 && mouseY >= 75 * numRows - 62 && mouseY < 75 * numRows - 2) {
    printAll();
  }
}
