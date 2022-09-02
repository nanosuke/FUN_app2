int page = 0; // ページ移行の変数

void keyPressed() {
  if (key == ENTER || key == RETURN) { // ENTERを押したときpageに+1
    page = page + 1;
    se1.play(); // ENTERを押した時にSEを流す
  } else if (key == BACKSPACE) { // BACKSPACEを押したときpageに-1
    page = page - 1;
    se1.play(); // BACKSPACEを押した時にSEを流す
  }

  if (page < 0) { // pageが0より小さいまたは2より大きいとき、そのページに留まる
    page = 0;
  } else if (page > 2) {
    page = 2;
  }
  
  if (!(key == ENTER || key == RETURN || key == BACKSPACE)) { // ENTER、RERUTN、BACKSPACE以外のキーが押された時
    keydata = key; // 押下したキーを取得する
    data = data + keydata; // 入力したキーをdataに足していく
  }
}
