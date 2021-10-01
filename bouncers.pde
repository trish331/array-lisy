class Bouncer {

  float x, y, vx, vy, d;
  int h, s, b;

  Bouncer() {
    x = random(width);
    y = random(height);
    vx = random(-5, 5);
    vy = random(-5, 5);
    h = int(random(255));
    d = random(5, 25);
    s = 255;
    b = 255;
  }

  void act() {

    //how the bouncer moves
    x = x + vx;
    y = y + vy;

    //bouncing off the walls
    if (x < d/2 || x > width-d/2)  vx = -vx;
    if (y < d/2 || y > height-d/2) vy = -vy;

    //bouncing off other bouncers
    int i = 0;
    while (i < bouncers.size()) {
      if (x != bouncers.get(i).x && y != bouncers.get(i).y  ) {
        if (dist(x, y, bouncers.get(i).x, bouncers.get(i).y) < d/2 + bouncers.get(i).d/2) {
          vx = (x - bouncers.get(i).x)/3;
          vy = (y - bouncers. get(i).y)/3;
        }
      }
      i++;
    }

    //prevent bouncers from getting stuck
    if (x < d/2) x = d/2;
    if (x > width-d/2) x = width-d/2;
    if (y < d/2) y = d/2;
    if (y > height-d/2) y = height-d/2;
  }

  void show() {
    strokeWeight(1);
    stroke(0);
    fill(h, s, b);
    circle(x, y, d);
  }
}
