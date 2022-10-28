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
    if (this.face == 1) circle(x, y, circleSize);
    else if (this.face == 2) {
      circle(x - circleSize, y, circleSize);
      circle(x + circleSize, y, circleSize);
    }
    else if (this.face == 3) {
      circle(x - circleSize, y + circleSize, circleSize);
      circle(x + circleSize, y + circleSize, circleSize);
      circle(x, y - circleSize, circleSize);
    }
    else if (this.face == 4) {
      circle(x - circleSize, y + circleSize, circleSize);
      circle(x + circleSize, y + circleSize, circleSize);
      circle(x - circleSize, y - circleSize, circleSize);
      circle(x + circleSize, y - circleSize, circleSize);
    }
    else if (this.face == 5) {
      circle(x, y, circleSize);
      circle(x - circleSize * 1.5, y + circleSize * 1.5, circleSize);
      circle(x + circleSize * 1.5, y + circleSize * 1.5, circleSize);
      circle(x - circleSize * 1.5, y - circleSize * 1.5, circleSize);
      circle(x + circleSize * 1.5, y - circleSize * 1.5, circleSize);
    }
    else if (this.face == 6) {
      circle(x - circleSize, y + 1.5 * circleSize, circleSize);
      circle(x + circleSize, y + 1.5 * circleSize, circleSize);
      circle(x - circleSize, y - 1.5 * circleSize, circleSize);
      circle(x + circleSize, y - 1.5 * circleSize, circleSize);
      circle(x - circleSize, y, circleSize);
      circle(x + circleSize, y, circleSize);
    }
  }
}
