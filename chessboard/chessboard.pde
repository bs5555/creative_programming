int nr = 8;
float dx = 0;
float dy = 0;
color c = 0; //color(0,0,0);

void setup()
{
  size(800,600);
  surface.setResizable(true);
}

void draw()
{
  dx = width/nr;
  dy = height/nr;
  noStroke();
  for(int y = 0; y < nr; y = y + 1)
  {
    for(int x = 0; x < nr; x = x + 1)
    {
      fill(c);
      rect(x*dx,y*dy,dx,dy);
      changeColor();
    }
    changeColor();
  }
}

void changeColor()
{
  if(c==0)
  {
    c = 255;
  }
  else
  {
    c = 0;
  }
}
