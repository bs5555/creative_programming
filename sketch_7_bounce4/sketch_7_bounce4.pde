int nc = 40;
float[] cx = new float[nc];
float[] vx = new float[nc];
float[] cy = new float[nc];
float[] vy = new float[nc];
float[] r  = new float[nc];
color[] c = new color[nc];
 
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
    r[i]=random(10,30);
    c[i]=color(random(100,200),0,random(100,200));
  }
}

void draw()
{
  background(0);
  noStroke();
  for(int i = 0; i < nc; i++)
  {
    fill(c[i]);
    circle(cx[i],cy[i],r[i]);
    cx[i] = cx[i] + vx[i];
    cy[i] = cy[i] + vy[i];
    if(cx[i] > width || cx[i] < 0) vx[i] = vx[i] * (-1);
    if(cy[i] > height || cy[i] < 0) vy[i] = vy[i] * (-1);  
  }  
}
