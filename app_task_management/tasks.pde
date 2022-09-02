int tableSize = 50; // 七角形の大きさ

void table(int pos_x, int pos_y) { // タスクの締め切りまでの時間の図
  pushStyle(); // 設定を保存する
  pushMatrix();

  translate(pos_x, pos_y); // 座標の位置を変える
  rotate(PI/2*7); // 七角形に合わせて座標を回転させる

  beginShape();
  stroke(table); // 七角形の色
  fill(top); // 七角形の背景(内部)の色
  strokeWeight(5);
  for (int i = 0; i<=7; i++) { // 七角形を描く
    float x = tableSize * cos(i*TWO_PI/7);
    float y = tableSize * sin(i*TWO_PI/7);
    vertex(x, y);
  }
  endShape();

  float angle_x = floor(frameCount/30) * TWO_PI/7; // 七角形の各辺のx座標からの角度
  float angle_y = (floor(frameCount/30) + 1) * TWO_PI/7; // 七角形の各辺のy座標からの角度
  float ball_x = map(frameCount%30, 0, 30, tableSize*cos(angle_x), tableSize*cos(angle_y)); // 残り時間に合わせて七角形上を移動する、球の中心のx座標
  float ball_y = map(frameCount%30, 0, 30, tableSize*sin(angle_x), tableSize*sin(angle_y)); // 残り時間に合わせて七角形上を移動する、球の中心のy座標

  fill(table); // 七角形の色
  ellipse(ball_x, ball_y, 10, 10); // 残り時間に合わせて七角形上を移動する、球を表示する

  rotate(-PI/2*7); // 回転させた座標を戻す

  fill(word); // 文字の色
  textSize(20);
  text("1day", -20, 5); // 残り日数を表示する
  text("communication", -75, 70); // 課題の名前を表示する

  popMatrix(); // 保存した設定に戻す
  popStyle();
}
