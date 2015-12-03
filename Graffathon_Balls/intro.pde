class Intro
{
  float counter = 2;
  float vallue = 1;
  
  
  Intro()
  {
  }
  void play()
  {
     background(0);

   vallue += counter;
   pushMatrix();
   
   tint(vallue);
   image(skeletor, CANVAS_WIDTH/2-436/4, CANVAS_HEIGHT/2-522/4,436/2, 522/2);
   filter(GRAY);
   if(vallue==255)
   counter = -2;
   if(vallue==0)
   counter = 0;
   popMatrix();
    
  }
}
