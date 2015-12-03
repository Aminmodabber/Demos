float iskutime = 555;
float isku = 0;

int BALLSDELAY = 100000;

void drawDemo(int time) 
{
  if (time >= 47000 && time < 47100) {
    isku = 0;
    iskutime = 0;
  }


  if (time < 47000)
  {

    if (time > iskutime ) {
      iskutime += 419.09;
      isku++;
      if (isku % 4 != 0)
        hitBalls(2);
    }

    if (time > 18000 && time < 26000)
      hitBalls(0.5);

    if (time > 43000 && movedFrames == -1)
    {
      movedFrames = 1;
      for (Ball ball : balls) 
        ball.laskeArvot(new PVector(100, 100, 0), -8);
    }

    drawBalls(time + BALLSDELAY);
  }
  else if (time < 82500) {

    drawPlanets(time);
  }
  else if (time > 82000)
  {
    camera(200, 200, 200.0, 200.400, 0.0, 0.0, 0.0, 1.0, 0.0);
    image(skeletor, 0, 0);
  }
  
  if (time > 84500)
  {
    exit();
  }
}



//40100, 46973,

