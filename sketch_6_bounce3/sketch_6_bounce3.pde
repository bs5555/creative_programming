int nc = 40;
float[] cx = new float[nc];
float[] vx = new float[nc];
float[] cy = new float[nc];
float[] vy = new float[nc];

void setup()
{
  size(800,600);
  surface.setResizable(true);
  for(int i = 0; i < nc; i++)
  {
    cx[i]=width/2;
    cy[i]=height/2;
    vx[i]=random(-4,4);
    vy[i]=random(-4,4);
  }
}

void draw()
{
  background(0);
  noStroke();
  for(int i = 0; i < nc; i++)
  {
    circle(cx[i],cy[i],30);
    cx[i] = cx[i] + vx[i];
    cy[i] = cy[i] + vy[i];
    if(cx[i] > width || cx[i] < 0) vx[i] = vx[i] * (-1);
    if(cy[i] > height || cy[i] < 0) vy[i] = vy[i] * (-1);  
  }  
}
