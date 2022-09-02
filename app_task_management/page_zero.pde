char keydata = ' '; // 最初keydataは空白
String data = new String();

PrintWriter output; // ファイルにデータを書き込むための変数

void firstPage() {  
  background(top);
  fill(table);
  textSize(64);
  text("タスクを記入", 50, 100); // 「タスクを記入」

  triangleButton(20, 290, 230, 0); // 日時を変更する三角形のボタンを表示する
  triangleButton(20, 420, 230, 0);
  triangleButton(20, 290, 330, 1);
  triangleButton(20, 420, 330, 1);

  textSize(20);
  text("press 'ENTER' ", 400, 480); //  「press 'ENTER' to go to next page→」
  text("to go to ", 400, 500);
  text("next page→", 400, 520);
  textSize(64);

  fill(word);
  dateFunction(); // 日付を表示する

  text(data, 0, 200); // 打った文字を表示する

  String[] words = split(data+myyear+mymonth+mydates, ',');
  saveStrings("tasks.txt", words); // 打った文字をtasks.txtに保存する
}
