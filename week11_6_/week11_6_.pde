//week11_6_
//小精靈張嘴
void set up(){
  size(600,600);
}
int x=300-15,y=300-15,dx=0,dy=0,dir=0;
float m=0, dm=0.05;
boolean[][]bean_eaten=new boolean[20][20];
void draw(){
  background(0);
  for(int i=0; i<20; i++)
    for(int j=0; j<20; j++)
    if(bean_eaten[i][j]=false){
      fill(255);
      ellipse(15+j*30,15+i*30,5,5);
      if(dist(x,y,15+j*30,15+j*30)<15)bean_eaten[i][j]=true;
    }
}
}
  fill(255,255,0);
  float m0=dir*PI/2;
  arc(x,y,30,30,m0+m,m0+P1*2-m);
  if(x+dx >= 15 && x+dx <= 600-15)x+=dx;
  if(y+dy >= 15 && y+dy <= 600-15)y+=dy;
  if((x-15)%30==0 && (y-15)%30==0){
    if(next==2){dx=-1;dy=0;dir=2;}
    if(next==2){dx=-1;dy=0;dir=2;}
    if(next==2){dx=-1;dy=0;dir=2;}
    if(next==2){dx=-1;dy=0;dir=2;}
    next=-1;
}

if(np=1 || n<0)dn=-dn;
m+=dn
}
void keyPressed(){
  if(keyCode==LEFT){dx=-1;dy=0;dir=2;}
  if(keyCode==RIGHT){dx=+1;dy=0;dir=0;}
  if(keyCode==UP){dx=0;dy=-1;dir=3;}
  if(keyCode==DOWN){dx=0;dy=+1;dir=1;}
}
