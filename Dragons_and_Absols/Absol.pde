class Absol
{
  PVector show = new PVector(random(0, width), random(0, width));

  PVector move = new PVector(random(-5, 5), random(-5, 5));

  PImage Absol;

  boolean movement = false;
  boolean Poke = false;


  Absol()
  {
    if (Poke == true)
    {
    Absol = loadImage("ampharos.png");
    }
    else
    {
      Absol = loadImage("Absol.png");
    }
  }

  void show()
  {
    imageMode(CENTER);
    image(Absol, show.x, show.y);
  }

  void move()
  {
    if (keyPressed)
    {
      if (key == CODED)
      {
        if (keyCode == ALT)
        {
          movement = !movement;
        }
      }
    }

    if (movement == true)
    {
      show.add(move);

      if (show.x >= width) 
      {
        Poke = !Poke;
        move.x = -abs(move.x);
        Absol = loadImage("ampharos.png");
      }
      
      if (show.x <= 0)
      {
        Poke = !Poke;
        move.x = abs(move.x);
        Absol = loadImage("ampharos.png");
      }
      
      if (show.y >= height)
      {
        Poke = !Poke;
        move.y = -abs(move.y);
        Absol = loadImage("ampharos.png");
      }
      if (show.y <=0)
      {
        move.y = abs(move.y);
        Poke = !Poke;
        
      }
    }
  }
}

