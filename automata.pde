int x,y;
int direction;

int w = 700;
int h = 700;

int speed = 2000;
long generation = 0;

int on = (int)color(0,0,0);  //black = on
int off = (int)color(255,255,255);  //white = off

void setup() {
  size(w,h);
  direction = 1;
  x = (int)(w / 2);
  y = (int)(h / 2);
  background(255,255,255);
}

void draw() {
  loadPixels();
  
  for (int i  = 0; i < speed; i++) {
  move();
  if (pixels[x+y*height] == on) {
    pixels[x+y*height] = off;
    right();
    move();
  } else {
    pixels[x+y*height] = on;
    left();
    //move();
    //right();
  }
  generation++;
  }
  
  updatePixels();
}

void move() {
  if (direction == 1){
    x--;
  }
  if (direction == 2){
    y++;
  }
  if (direction == 3){
    x++;
  }
  if (direction == 4){
    y--;
  }
  
  if (x < 0) x = height - 1;
  if (x > width - 1) x = 0;
  
  if (y < 0) y = height - 1;
  if (y > height - 1) y = 0;
}

void right() {
  direction=direction<4 ? direction+1 : 1;
}

void left() {
  direction=direction>1 ? direction-1 : 4;
}

void keyPressed() {
  if (key == ' ') {
    background(255);
    x = (int)(w / 2);
    y = (int)(h / 2);
  } else if (key == '=') {
    speed *= 10;
  } else if (key == '-') {
    speed /= 10;
  } else if (key == '[') {
    
  } else if (key == 'm') {
    while (!keyPressed);
  }
  
  println("Speed: " + speed + " Generation: " + generation);
}

void mousePressed() {
  //saveFrame("shots/####.png");
 
  x = (int)mouseX;
  y = (int)mouseY;
}
