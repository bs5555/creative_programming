planet p;

void setup()
{
  size(800,600,P3D);
  surface.setResizable(true);
  p = new planet(0,0,60,255,9);
  background(0);
}

void draw()
{
  fill(0,0,0,10);
  rect(0,0,width,height);
  translate(width/2,height/2);
  p.step();
  p.show(); 
}

void mouseClicked()
{
  p = new planet(0,0,60,255,5);
  background(0);
}

color rCol()
{
  return(color(round(random(200)),round(random(200)),255));
}
