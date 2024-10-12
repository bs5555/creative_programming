int cx = 0;

void setup()
{
  size(800,600);
  surface.setResizable(true);
  cx = width/2;
}

void draw()
{
  background(0);
  noStroke();
  circle(cx,height/2,30);
  cx = cx + 1;
}
