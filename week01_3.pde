void setup(){//設定
  size(500,500);//視窗大小(寬,高)
  background(255);//背景色
}

void draw(){//畫圖 每秒60次
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }//畫線(滑鼠座標mouseX,mouseY,到之前滑鼠座標pmouseX,pmouseY);
}
void keyPressed(){
  if(key=='1') stroke(255,0,0);//按下數字1,2,3會切換顏色
  if(key=='2') stroke(0,255,0);
  if(key=='3') stroke(0,0,255);
}
