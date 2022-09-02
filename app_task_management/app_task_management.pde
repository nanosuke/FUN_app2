import processing.sound.*; // 音再生に必要

import processing.awt.PSurfaceAWT; // ボタン作成に必要
import java.awt.Button;
import javax.swing.JLayeredPane;
import java.awt.event.*; // ボタン押下時のイベントに必要

void setup() {
  size(600, 600); // ウィンドウサイズ
  textFont(createFont("NikkyouSans-mLKax.ttf", 64, true)); // フォント変更
  setUpSound();

}

void draw() {
  changeColors(); // colorNumberが変わるたび、ページの色デザインが変わる
  panel = getLayeredPanel(); // PSurfaceが持つ、レイヤー付きパネルを取得する

  switch(page) {
  case 0: // page=0の時、firstPageへ
    firstPage();
    break;
  case 1: // page=1の時、secondPageへ
    secondPage();
    break;
  case 2: // page=2の時、thirdPageへ
    thirdPage();
    break;
  default:
    break;
  }
}
