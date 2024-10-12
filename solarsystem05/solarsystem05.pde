int np = 100;
planet[] p = new planet[np];

void setup()
{
 size(800,600);
 surface.setResizable(true);
 for(int i = 0; i < np; i++)
 {
   p[i] = new planet(random(300),random(-2,2),random(60),color(round(random(200)),round(random(200)),255));
 }
 
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  for(int i = 0; i < np; i++)
  {
    p[i].step();
    p[i].show();
  }  
}
