PImage aura;
PImage ki;
PImage goku;
ArrayList<Meteor> mets;
int ballWidth = 48;
missile r;
missiletwo rq;
missilethree mat;
missilefour mons;
missilefive mans;
colormissile coco;
colormissiletwo cocotwo;
void setup()
{  
   rectMode(CENTER);
r = new missile();
rq = new missiletwo();
mat = new missilethree();
mons = new missilefour();
mans = new missilefive();
coco = new colormissile();
cocotwo = new colormissiletwo();
     
  size(800,800);
  aura = loadImage("aura.png");
  ki = loadImage("toppo_ki_blast_by_alphagreywind-db18n64.png");
  goku = loadImage("goku_super_saiyan_god_power_up__palette_3_by_eymsmiley-d92yp95.png");
  goku.resize(100,200);
  mets = new ArrayList<Meteor>();
  mets.add(new Meteor(width/2, 0, ballWidth));
 noStroke();
}
  
  void draw()
  { 
   if(keyPressed)
   {
   background(random(255),random(255),random(255));
   }
    fill(185,0,0);
  rect((width/2),(height/2),8000,8000);
     r.Update();
     rq.Update();
     mat.Update();
     mons.Update();
     mans.Update();
     coco.Update();
     cocotwo.Update();
     
    for (int i = mets.size()-1; i >= 0; i--) { 
    Meteor ball = mets.get(i);
    ball.move();
    ball.display();
    if (ball.finished())
    {
      mets.remove(i);
    }
    
  }
  
  mets.add(new Meteor(random(1000), 0, ballWidth));
  
   fill(50,234,60);
    if(keyPressed)
    {
image(aura,00,00);
    }
    image(goku, 400, 400, 200,300);
    
  }
  