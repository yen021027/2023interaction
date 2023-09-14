void setup(){//設定
  size(500,500);//視窗大小(寬,高)
  background(255);//背景色
}

void draw(){//畫圖 每秒60次
  if(mousePressed){
    line(mouseX,mouseY,pmouseX,pmouseY);
  }//畫線(滑鼠座標mouseX,mouseY,到之前滑鼠座標pmouseX,pmouseY);
}
