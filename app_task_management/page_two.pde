void thirdPage() { // デザインを変更するページ
  background(top);

  fill(word);
  text("choose", 100, 100); // 「choose the design」
  text("the", 100, 200);
  text("design↓", 100, 300);

  fill(table); 
  textSize(20);
  text("press 'BACKSPACE' ", 50, 480); //  「←press 'BACKSPACE' to go to previous page」
  text("to go to ", 50, 500);
  text("←previous page", 50, 520);
  textSize(64);

  buttonFunction(); // デザインを変えるボタンを表示する
}
