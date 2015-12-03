class Parvi2
{
  pLintu[] pa = new pLintu[80];
  float x;
  float y;
  float z;
  float h;
  float s;
   Parvi2(float centerX,float centerY,float centerZ)
  {
    x = centerX;
    y = centerY;
    z = centerZ;
    
    for(int i = 0;i < 80 ;i++)
    {
      h = random(200);
      s = random(-1300,1300);
      pa[i] = new pLintu(x+s,y+h*10,z,x+s,y+h*10+100,10);
    }
    
  }
  void Draw()
  {
    for(int i = 0;i< 80;i++)
    {
        pa[i].paper(); 
        pa[i].fly();
    }
  }
  void Color()
  {
  for(int i = 0;i< 80;i++)
  {
    if (pa[i].getColor() == false)
     pa[i].changeColor(100);
  }
  }
  void Move(int value)
  {
    for(int i = 0;i< 80;i++)
    {
        pa[i].moveP(0,value);  
    }
  }
  
  
        
}
