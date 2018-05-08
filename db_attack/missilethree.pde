class missilethree extends missile

{
  int size2 = 60;
  missilethree()
  {
     pos = new PVector(random(width), height);
    col = color(255, 0,0);
    size = 35;
    
  }
  void update()
  {
    pos.x += random(-2, 2);
   
    col = color(36,89,70);
    fill(col);
    rect(pos.x, pos.y, size, size);
    if (pos.y < 0)
    {
      pos.y = height;
    }
    
    
    
    
    
  }
  
}