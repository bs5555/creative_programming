class planet
{
  float dist = 10;
  float speed = 0.1;
  float dm = 10;
  color c = color(255,255,255);
  float angle = 0;
  int nMoons = 0;
  planet[] moons;
  int generation = 0;

  
  planet(float _distance,float _speed,float _diameter, color _color, int _generation)
  {
    this.dist = _distance;
    this.speed = _speed;
    this.dm = _diameter;
    this.c = _color;
    this.generation = _generation;
    if(this.generation > 0)
    {
      this.nMoons = ceil(random(4));
      this.moons = new planet[this.nMoons];
      for(int i = 0; i < nMoons; i++)
      {
        this.moons[i] = new planet(random(60,200),random(-0.3,0.3),2+(10*generation),rCol(),this.generation-1);
      }
    }
  }
  
  void step()
  {
    this.angle=this.angle + this.speed;
    for(int i = 0; i < nMoons; i++)
    {
      this.moons[i].step();
    }
  }
  
  void show()
  {
    noStroke();
    fill(this.c);
    pushMatrix();
      rotate(radians(this.angle));
      translate(0,this.dist);
      circle(0,0,this.dm);
      for(int i = 0; i < nMoons; i++)
      {
        this.moons[i].show();
      }
    popMatrix();
  }
}
