class Circle{
  float cx = 0;
  float cy = 0;
  float vx = 0;
  float vy = 0;
  float r = 0;
  color c = 0;
  
  Circle(float _cx,float _cy)
  {
    this.cx=_cx;
    this.cy=_cy;
    this.vx = random(-4,4);
    this.vy = random(-4,4);
    this.r = random(10,40);
    this.c=color(random(100,200),0,random(100,200));
  }
  
  void show()
  {
    noStroke();
    fill(this.c);
    circle(this.cx,this.cy,this.r);
  }
  
  void update()
  {
    this.cx = this.cx + this.vx;
    this.cy = this.cy + this.vy;
    if(this.cx > width || this.cx < 0) this.vx = this.vx * (-1);
    if(this.cy > height || this.cy < 0) this.vy = this.vy * (-1);
  }
  
}
