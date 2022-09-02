int mydates=1, myyear=2021, mymonth=1, myhour=0, myminutes=0; // 最初2021年1月1日

void mousePressed() { // 三角形のボタンを押したらmymonthやmydatesの値が変化する
  if (mouseX >= 290-7 && mouseY >=230-7 && mouseX <= 290+7 && mouseY <= 230+7) {
    mymonth++;
  } else if (mouseX >= 290-7 && mouseY >= 330-7 && mouseX <= 290+7 && mouseY <= 330+7) {
    mymonth--;
  } else if (mouseX >= 420-7 && mouseY >= 230-7 && mouseX <= 420+7 && mouseY <= 230+7) {
    mydates++;
  } else if (mouseX >= 420-7 && mouseY >= 330-7 && mouseX <= 420+7 && mouseY <= 330+7) {
    mydates--;
  }
}


/* 日時設定時の三角形のボタン */
void triangleButton(int r, int x, int y, int a) { // r=正三角形を書くときの円の半径、x,y=円の中心の座標、a=0:上向き a=1:下向き
  pushMatrix(); // 現在の中心座標を保存する
  translate(x, y); // 中心座標をx,yにする
  
  if (a == 0) { // 上向きの時回転する(補正)
    rotate(radians(30));
  } else if (a == 1) { // 下向きの時回転する(補正)
    rotate(-radians(30));
  }
  
  beginShape();
  for (int i = 0; i < 3; i++) {
    noStroke(); // 図形の枠線無し
    vertex(r*cos(radians(360*i/3)), r*sin(radians(360*i/3))); // 円を三等分して正三角形を描く
  }
  endShape(CLOSE);
  
  popMatrix(); // 保存した座標に戻す
}
