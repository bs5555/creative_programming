int cx = 0;
int vx = 5;
int cy = 0;
int vy = 3;

void setup()
{
  size(800,600);
  surface.setResizable(true);
  cx = width/2;
  cy = height/2;
}

void draw()
{
  background(0);
  noStroke();
  circle(cx,cy,30);
  cx = cx + vx;
  cy = cy + vy;
  if(cx > width || cx < 0) vx = vx * (-1);
  if(cy > height || cy < 0) vy = vy * (-1);
  
}
