void setup(){
   size(400,400,P3D); //processing的3D功能
}
void draw(){
  background(#FFFFF2);//老師喜歡的黃色
  pushMatrix();//備份矩陣
    translate(mouseX,mouseY);//移動
    box(100);//3D的盒子
  popMatrix();//還原矩陣
}
