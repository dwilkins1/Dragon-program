Dragon D1;
Absol A1;

boolean cshift = false;
boolean fireball = false;
PImage img;
int number = 25;

Absol[] absol = new Absol[number];

void setup() {
  frameRate(30);
  img = loadImage("Loreal.png");
  D1 = new Dragon();
  A1 = new Absol();
  size(img.width, img.height);
  
  for (int i = 0; i < number; i++)
  {
    absol[i] = new Absol();
  }
}


void draw()
{
  imageMode(CORNER);
  image(img, 0, 0);
  for (int i = 0; i < number; i++)
  {
    absol[i].show();
    absol[i].move();
  }

  if (cshift == true)  
  {
    D1.dragoncolorcamo();
    D1.dragonshowcamo();
  }


  if (cshift == false) 
  {
    D1.dragoncolornorm();
    D1.dragonshownorm();
  }


  D1.dragonbounce();

  D1.dragonmove();

  if (fireball == true)
  {
    D1.fireball();
  }
}

void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == CONTROL)
    {
      cshift = !cshift;
    }
    if (keyCode == SHIFT)
    {
      fireball = !fireball;
    }
  }
}

//Dragon is now camouflaged. Very mysterious. Invisible, like. Indeed.

