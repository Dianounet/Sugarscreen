PVector pos = new PVector(100, 100);
int x = int(random(-5, 5));
int y = int(random(-5, -1));

void setup() {
  size(600, 600);
  background(100);
}

void draw() {
  background(100);
  fill(0, 0, 255);
  pos.x += x;
  pos.y += y;
  ellipse(pos.x, pos.y, 50, 50);
  if (pos.x > 575) {
    x = int(random(-5, -1));
  } else if (pos.x < 25) {
    x = int(random(1, 5));
  }
  if (pos.y > 575) {
    y = int(random(-5, -1));
  } else if (pos.y < 25) {
    y = int(random(1, 5));
  }
}
