// week06_1_sound_library_SoundFile_play
// File-Preference 
// Sketch-Library-ManageLibraries, 找 Sound 安裝它
// File-Examples-Libraries核心函式庫-Sound-soundfile-SimplePlayback
import processing.sound.*;
SoundFile sound;
void setup(){
  size(500, 400);
  sound = new SoundFile(this, "music.mp3");
  sound.play();
}
void draw(){
  
}
  
