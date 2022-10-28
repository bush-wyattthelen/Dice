int dieSize = 60;
int circleSize = 9;

class Die {
  private int x;
  private int y;
  private int face;
  
  Die(int a, int b, int c) {
    x = a;
    y = b;
    face = c;
  }
  
  void show() {
    fill(255);
    square(x, y, dieSize);
    
    fill(0);
    if (this.face == 1) ellipse(x, y, circleSize, circleSize);
    else if (this.face == 2) {
      ellipse(x - circleSize, y, circleSize, circleSize);
      ellipse(x + circleSize, y, circleSize, circleSize);
    }
    else if (this.face == 3) {
      ellipse(x - circleSize, y + circleSize, circleSize, circleSize);
      ellipse(x + circleSize, y + circleSize, circleSize, circleSize);
      ellipse(x, y - circleSize, circleSize, circleSize);
    }
    else if (this.face == 4) {
      ellipse(x - circleSize, y + circleSize, circleSize, circleSize);
      ellipse(x + circleSize, y + circleSize, circleSize, circleSize);
      ellipse(x - circleSize, y - circleSize, circleSize, circleSize);
      ellipse(x + circleSize, y - circleSize, circleSize, circleSize);
    }
    else if (this.face == 5) {
      ellipse(x, y, circleSize, circleSize);
      ellipse(x - circleSize * 1.5, y + circleSize * 1.5, circleSize, circleSize);
      ellipse(x + circleSize * 1.5, y + circleSize * 1.5, circleSize, circleSize);
      ellipse(x - circleSize * 1.5, y - circleSize * 1.5, circleSize, circleSize);
      ellipse(x + circleSize * 1.5, y - circleSize * 1.5, circleSize, circleSize);
    }
    else if (this.face == 6) {
      ellipse(x - circleSize, y + 1.5 * circleSize, circleSize, circleSize);
      ellipse(x + circleSize, y + 1.5 * circleSize, circleSize, circleSize);
      ellipse(x - circleSize, y - 1.5 * circleSize, circleSize, circleSize);
      ellipse(x + circleSize, y - 1.5 * circleSize, circleSize, circleSize);
      ellipse(x - circleSize, y, circleSize, circleSize);
      ellipse(x + circleSize, y, circleSize, circleSize);
    }
  }
}
