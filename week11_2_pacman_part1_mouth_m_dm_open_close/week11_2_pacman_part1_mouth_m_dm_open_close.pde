//week11_2_pacman_part1_mouth_m_dm_open_close
//小精靈張嘴
void set up(){
  size(500,500);
}
int x=250,y=250;
float m=0, dm=0.05;
void draw(){
  background(0);
  fill(255,255,0);
  arc(x,y,30,30,+m,P1*2-m);
  if(m>=1 11 m<0)dm=-dm;
  m+=dm;
}
