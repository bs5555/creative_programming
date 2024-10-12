int nc = 40;
Circle[] cc = new Circle[nc];
 
void setup()
{
  size(800,600);
  surface.setResizable(true);
  for(int i = 0; i < nc; i++)
  {
    cc[i]= new Circle(width/2,height/2);
  }
}

void draw()
{
  background(0);  
  for(int i = 0; i < nc; i++)
  {
    cc[i].update();    
    cc[i].show();
  }  
}
