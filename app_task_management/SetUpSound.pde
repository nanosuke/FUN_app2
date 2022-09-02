SoundFile se1, se2, se3, se4; // SEの変数

void setUpSound() {
  se1 = new SoundFile(this, "マウスのクリック音.mp3"); // 選択音
  se2 = new SoundFile(this, "レトロなレバー・スイッチの音_2.mp3"); // 変更音
  se3 = new SoundFile(this, "システム決定音_8.mp3"); // タスク終了音
}
