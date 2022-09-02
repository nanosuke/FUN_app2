void secondPage() { //<>//
  background(top);

  if (taskNum <= 3) {
    for (int i=0; i<= taskNum; i++) {
      table(100+200*(i-1), 100);
    }
    
    
  } else if (taskNum <= 6) {
    for(int i=0; i<= 3; i++){
      table(100+200*(i-1), 100);
    }
    for (int i=0; i<taskNum-3; i++) {
      table(100+200*(i-1), 300);
    }
    
    
  } else if (taskNum <= 9) {
    for (int i=0; i<= 3; i++) {
      table(100+200*(i-1), 100);
    }
    for (int i=0; i<= 6; i++) {
      table(100+200*(i-1), 100);
    }
    for (int i=0; i<taskNum-6; i++) {
      table(100+200*(i-1), 500);
    }
  }


  fill(table); 
  textSize(20); 
  text("press 'BACKSPACE' ", 50, 480); // 「←press 'BACKSPACE' to go to previous page」
  text("to go to ", 50, 500); 
  text("←previous page", 50, 520); 

  text("press 'ENTER' ", 400, 480); // 「press 'ENTER' to go to next page→」
  text("to go to ", 400, 500); 
  text("next page→", 400, 520); 
  textSize(64);
}
