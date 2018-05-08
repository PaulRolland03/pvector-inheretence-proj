class missile
{
  PVector pos;
  color col;
  float size;
 missile()
  {
    pos = new PVector(random(width),height);
    col = color (255,0,0);
    size = 10;
  }
  void Update()
  {
    pos.x += random(-2,2);
    pos.y += -70;
    fill(255,0,0);
    rect(pos.x,pos.y,size,size);
    if(pos.y < 0)
    {
      pos.y = height;
    }
  }
  
}