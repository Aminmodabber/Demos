/*
 * Sets up audio playing: call this last in setup()
 * so that the song doesn't start to play too early
 */

void setupAudio() {
  minim = new Minim(this);
  song = minim.loadFile("soundtrack.mp3");
  // Uncomment this if you want the demo to start instantly
  //song.play();
}
