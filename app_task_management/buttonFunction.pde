JLayeredPane panel; //<>//
Button button0, button1, button2, button3;

void buttonFunction() { // デザインを変更するボタン
  button0 = new Button("春"); // AWTでボタン1を作成する
  button1 = new Button("夏"); // AWTでボタン1を作成する
  button2 = new Button("秋"); // AWTでボタン1を作成する
  button3 = new Button("冬"); // AWTでボタン1を作成する
  
  button0.setBounds(width/6, 350, 50, 30); // ボタン1の位置と大きさ
  button0.addActionListener(
    new ActionListener() { // ボタン0を押下したとき、colorNumber=0になる
    public void actionPerformed(ActionEvent ev) {
      colorNumber = 0;
      se2.play(); // ボタン押下時にSEを流す
    }
  }
  );


  button1.setBounds(width/6*2, 350, 50, 30); // ボタン1の位置と大きさ
  panel.add(button1); // ボタン1をレイヤー付きパネルに追加する
  button1.addActionListener(
    new ActionListener() { // ボタン1を押下したとき、colorNumber=1になる
    public void actionPerformed(ActionEvent ev) {
      colorNumber = 1;
      se2.play(); // ボタン押下時にSEを流す
    }
  }
  );


  button2.setBounds(width/6*3, 350, 50, 30); // ボタン1の位置と大きさ
  panel.add(button2); // ボタン1をレイヤー付きパネルに追加する
  button2.addActionListener(
    new ActionListener() { // ボタン2を押下したとき、colorNumber=2になる
    public void actionPerformed(ActionEvent ev) {
      colorNumber = 2;
      se2.play(); // ボタン押下時にSEを流す
    }
  }
  );


  button3.setBounds(width/6*4, 350, 50, 30); // ボタン1の位置と大きさ
  panel.add(button3); // ボタン1をレイヤー付きパネルに追加する
  button3.addActionListener(
    new ActionListener() { // ボタン3を押下したとき、colorNumber=3になる
    public void actionPerformed(ActionEvent ev) {
      colorNumber = 3;
      se2.play(); // ボタン押下時にSEを流す
    }
  }
  );



  /*if (keyPressed && key == ENTER) { // page=0、page=1に行くときに、page=3のボタンを消す
    panel.remove(button0); 
    panel.remove(button1); 
    panel.remove(button2); 
    panel.remove(button3);
  }
  */
}
