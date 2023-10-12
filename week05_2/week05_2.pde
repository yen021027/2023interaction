void setup(){
   size(400,400,P3D); //processing的3D功能
}
void draw(){
  background(#FFFFF2);//老師喜歡的黃色
  pushMatrix();//備份矩陣
    translate(mouseX,mouseY);//移動
    rotate(radians(mouseX));//對Y軸轉動
    fill(0,255,0);
    box(100);//3D的盒子
    
    noFill();//面不要填
    scale(2);
    box(100);
  popMatrix();//還原矩陣
}
