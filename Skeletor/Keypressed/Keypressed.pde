void keyPressed() 
{
  if (key == CODED) 
  {
    // Left/right arrow keys: seek song
    if (keyCode == LEFT) {
      song.skip(-SONG_SKIP_MILLISECONDS); 
    } else if (keyCode == RIGHT) {
      song.skip(SONG_SKIP_MILLISECONDS);
    }
  }
  // Space bar: play/payse
  else if (key == ' ') 
  {
    if (song.isPlaying())
      song.pause();
    else
      song.play();
  }
  // Enter: spit out the current position
  else if (key == ENTER) 
  {
    print(song.position() + ", "); 
  }
  
    float suuruus = 8;
  if (key == 'a') {
    movedFrames = 1;
    for (Ball ball : balls) 
      ball.laskeArvot(new PVector(100, 100, 0), suuruus);
  }   
    if (key == 's') {

  }   
  if (key == 'z')
    for (Ball ball : balls) 
      ball.hit(2);
  if (key == 'p')
   song.skip(47000); 

}
