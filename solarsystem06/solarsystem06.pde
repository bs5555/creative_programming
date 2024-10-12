int np = 100;
planet[] p = new planet[np];

void setup()
{
 size(800,600,P3D);
 surface.setResizable(true);
 for(int i = 0; i < np; i++)
 {
   p[i] = new planet(random(300),random(-0.3,0.3),random(60),color(round(random(200)),round(random(200)),255),randomBool());
 }
 
}

void draw()
{
  fill(0,0,0,5);
  rect(0,0,width,height);
  translate(width/2,height/2);
  for(int i = 0; i < np; i++)
  {
    p[i].step();
    p[i].show();
  }  
}

boolean randomBool()
{
  if(random(1) < 0.5) return(true);
  return(false);
}
