class Tree
{
  float h = 180;
  float c = 0;
  float d = 255;
  float[] coord = new float[600*3];
  Tree()
  {
    for(int i = 0; i < coord.length; i++)
     {
       coord[i] = 0;
       background(0);
     }
  }
  
  void grow(float clr)
{
  noStroke();
  pushMatrix();
  for(int i = 0; i < coord.length; i += 3)
  {
    pushMatrix();
    
    fill(100+(i%50));
    for(int j = 0; j < 3; j++)
        coord[i+j] += random(-2,2);
    for(int x = 0; x < 3; x++)
      coord[i+x] += (coord[i+x] % 3);
    translate(coord[i],coord[i+1],coord[i+2]);
    sphere(1);
    
    popMatrix();
  }
  popMatrix();

}
  
  void play()
  {
    //background(0);
    if (h == 180)
      c = -3;
    if (h == 0)
       c = 0;
    h += c;
    fill(h);
    sphere(100);
    grow(0);
  }
}


