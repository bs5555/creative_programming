float angle = 0;
int nc = 10;
scurve sc[][] = new scurve[nc][nc];

void setup()
{
  size(1000,1000);
  background(0);
  float step = width/(float)nc;
  for(int x=0; x<nc; x++)
  {
     for(int y=0; y<nc; y++)
     {
       sc[x][y]=new scurve((x*step)+(step/2),(y*step)+(step/2),step/2,random(0,2),random(0,2));
     }
  }
}

void draw()
{
  
  noStroke();
  fill(color(0,0,0,5));
  rect(0,0,width,height);
  angle=angle+10;
  for(int x=0; x<nc; x++)
  {
     for(int y=0; y<nc; y++)
     {
       sc[x][y].step();
       sc[x][y].show();
     }
  }
  
}
