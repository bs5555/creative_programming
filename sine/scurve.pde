class scurve
{
  float d = 100;
  float px = 0;
  float py = 0;
  float ox = 0;
  float oy = d;
  float cx = 0;
  float cy = 0;
  float speedX = 1;
  float speedY = 1;
  
  scurve(float _cx, float _cy, float _d, float _sx,float _sy)
  {
    this.cx=_cx;
    this.cy=_cy;
    this.d=_d;
    this.oy = d;
    this.speedX = _sx;
    this.speedY = _sy;
  }
  
  void step()
  {
    this.px = sin(radians(angle*this.speedX))*this.d;
    this.py = cos(radians(angle*this.speedY))*this.d;
  }
  
  void show()
  {
    pushMatrix();
      translate(this.cx,this.cy);
      stroke(255);
      line(this.ox,this.oy,this.px,this.py);
    popMatrix();
    this.ox=this.px;
    this.oy=this.py;
  }
}
