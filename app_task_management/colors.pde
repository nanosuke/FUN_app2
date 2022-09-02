int colorNumber=0; // デザインを変更する変数

color top; // 背景の色
color word; // 文字の色
color table; // 図形の色

void changeColors() {
  if (colorNumber == 0) { // 春っぽいデザイン
    top = #fcebef; 
    word = #f6c0d1;
    table = #ef8893;
  } else if (colorNumber == 1) { // 夏っぽいデザイン
    top = #9fd9f6;
    word = #0068b7;
    table = #fdd000;
  } else if (colorNumber == 2) { // 秋っぽいデザイン
    top = #b19962;
    word = #7c2e1e;
    table = #2a4743;
  } else if (colorNumber == 3) { // 冬っぽいデザイン
    top = #cee2df;
    word = #150201;
    table = #00213b;
  }
}
