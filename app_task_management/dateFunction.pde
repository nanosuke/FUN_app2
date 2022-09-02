void dateFunction() {
  if (mydates == 0 && (mymonth == 4 || mymonth == 6 || mymonth == 9 || mymonth == 11)) { // 日が1から30にとぶようにする
    mydates = 30;
  } else if (mydates == 0 && (mymonth == 1 || mymonth == 3 || mymonth == 5 || mymonth == 7 || mymonth == 8 || mymonth == 10 || mymonth == 12)) { // 日が1から31にとぶようにする
    mydates = 31;
  } else if (mydates == 0 && mymonth == 2) { // 日が1から29にとぶようにする
    mydates = 29;
  } else if (mydates == 31 && (mymonth == 4 || mymonth == 6 || mymonth == 9 || mymonth == 11)) { // 日が30から1にとぶようにする
    mydates = 1;
  } else if (mydates == 32 && (mymonth == 1 || mymonth == 3 || mymonth == 5 || mymonth == 7 || mymonth == 8 || mymonth == 10 || mymonth == 12)) { // 日が31から1にとぶようにする
    mydates = 1;
  } else if (mydates == 30 && mymonth == 2) { // 日が29から1にとぶようにする
    mydates = 1;
  } else if (mymonth == 0) { // 月が1から12にとぶようにする
    mymonth = 12;
  } else if (mymonth == 13) { // 月が12から1にとぶようにする
    mymonth = 1;
  }

  text(myyear+"年  月  日", 50, 300); // "年月日"を表示
  
  if (mymonth <= 9) {
    text(mymonth, 273, 300); // 月を表示(1桁)
    //text(mydates+"日", 500, 300);
  } else if (mymonth >= 10) {
    text(mymonth, 260, 300); // 月を表示(2桁)
  }
  if (mydates <= 9) {
    text(mydates, 400, 300); // 日を表示(1桁)
    //text(mydates+"日", 500, 300);
  } else if (mydates >= 10) {
    text(mydates, 380, 300); // 日を表示(2桁)
  }
}
