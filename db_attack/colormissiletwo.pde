class colormissiletwo extends missile
{
  colormissiletwo()
  {
    pos = new PVector(random(width),height);
    col = color(255,0,255);
    size = 20;
  }
   void Update()
  {
    pos.x += random(-2,2);
    pos.y += -5;
    col =color(random(255),random(255),random(255));
    fill(col);
    rect(pos.x,pos.y,size,size);
    if(pos.y < 0)
    {
      pos.y = height;
    }
  }
  }