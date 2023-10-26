ArrayList<PVector>pt;

void setup(){
  size(400,400);
  background(255);
  pt= new ArrayList<PVector>();
}
float ghostX=400,ghostY=20;
void mouseDragged(){ //按下mouse鍵 再拖他
  pt.add(new PVector(mouseX,mouseY));
}
void draw(){
  background(255);
  ellipse(200,200,15,15);
  //if(mousePressed)line(mouseX,mouseY,pmouseX,pmouseY);
  for(int i=0; i<pt.size(); i++){
    PVector p = pt.get(i);
    ellipse(p.x,p.y,3,3);
  }
  ellipse(ghostX,ghostY,15,15);
  float dx = 200-ghostX, dy = 200-ghostY,len = sqrt(dx*dx+dy*dy);
  ghostX += dx / len / 3;
  ghostY += dy / len / 3;
}
void mouseReleased(){
  for(int i=pt.size()-1;i>=0;i--){ //倒過來的for迴圈
    pt.remove(i);
  }
}
