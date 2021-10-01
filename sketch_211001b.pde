//bouncers with ArrayLists
//tricia sun
//oct 1 2021

ArrayList<Bouncer> bouncers;

void setup () {
  fullScreen(FX2D);
  rectMode(CENTER);
  colorMode(HSB);
  bouncers = new ArrayList <Bouncer>();
}

void draw () {
  background(0);
  int i = 0;
  while (i < bouncers.size()) { 
    bouncers.get(i).act();
    bouncers.get(i).show();
    i++;
  }
  bouncers.add (new Bouncer());
}
