planet p;

void setup()
{
 size(800,600);
 surface.setResizable(true);
 p = new planet(100,1,20,color(100,10,255));
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  p.step();
  p.show();
}
