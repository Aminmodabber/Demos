
class Sperm
{
  float[] coord = new float[200*3];
  Sperm()
  {
     for(int i = 0; i < coord.length; i++)
     {
       coord[i] = 0;
       background(0);
     }
  }
void grow(float clr)
{
  pushMatrix();
  for(int i = 0; i < coord.length; i += 3)
  {
    pushMatrix();
    
    fill(50+(i%50));
    if (clr == 1)
      fill(100+(i%50));
    if (clr == 2)
    fill(150+(i%50));
    if (clr == 3)
      fill(200+(i%50));
    
    for(int j = 0; j < 3; j++)
      coord[i+j] += random(-2,2);
    translate(coord[i],coord[i+1],coord[i+2]);
    
    if (beat == 2)
    {
        fill(30);
        sphere(1);
    }
    if (beat == 0) 
        sphere(1); 
    popMatrix();
  }
  popMatrix();

}
void explode()
{
  pushMatrix();
  for(int i = 0; i < coord.length; i += 3)
  {
    for(int j = 0; j < 3; j++)
      coord[i+j] += coord[i+j] /50; 
     translate(coord[i],coord[i+1],coord[i+2]);
  }
  popMatrix();
}

void play()
{
  if (phase == 2 || phase == 3)
  {
    grow(0);
    if (phase == 3)
     explode();
  }
  if(phase == 4)//clear
  {
    //background(0); 
    for(int i = 0; i < coord.length; i++)
    
       coord[i] = 0;
  }
  if(phase == 8)//clear
  {
    background(0); 
    for(int i = 0; i < coord.length; i++)
    
       coord[i] = 0;
  }
  if (phase == 5)
  {
    grow(1);
    explode();
  }
  if (phase == 6)
  {
    grow(2);
    explode();
  }
  if (phase == 7)
  {
    pushMatrix();
    translate(-100,0,0);
    grow(1);
    explode();
    popMatrix();
    pushMatrix();
    translate(100,0,0);
    grow(2);
    explode();
    popMatrix();
  }
  
  if (phase == 9)
  {
    pushMatrix();
    translate(0,100,0);
    grow(1);
    explode();
    popMatrix();
    
    pushMatrix();
    translate(-100,0,0);
    grow(2);
    explode();
    popMatrix();
    
    pushMatrix();
    translate(100,0,0);
    grow(3);
    explode();
    popMatrix();
    
  }
  
  
}
}


