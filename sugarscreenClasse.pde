Ball ball[] = new Ball[100];


void setup() {
  size(600, 600);
  background(100);
  for (int i = 0; i < ball.length; ++i) {
    ball[i] = new Ball(10, int(random(2, 7)));
  }
}

class Ball{
  PVector pos;
  int size;
  int spd;
  int x;
  int y;
  
  Ball(int _size, int _spd) {
    pos = new PVector(int(random(5, 595)), int(random(5, 595)));
    size = _size;
    spd = _spd;
    x = spd;
    y = spd;
  }
  
  int stayInX(){
    if (pos.x > 595) {
      x = 0-spd;
    } else if (pos.x < 5) {
      x = spd;
    }
    return x;
  }
  
  int stayInY(){
    if (pos.y > 595) {
      y = 0-spd;
    } else if (pos.y < 5) {
      y = spd;
    }
    return y;
  }
  
    
  void display(){
    fill(0, 0, 255);
    pos.x += x;
    pos.y += y;
    ellipse(pos.x, pos.y, size, size);
    x = stayInX();
    y = stayInY();
  }
}


void draw(){
  background(100);
  for (int i = 0; i < ball.length; ++i) {
    ball[i].display();
  }
}
