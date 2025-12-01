int playerDice;
int computerDice;
Button rollButton;

void setup() {
  size(500, 300);
  textAlign(CENTER, CENTER);
  textSize(24);
  
  // 初始化按鈕，將按鈕放在畫面中間
  rollButton = new Button("Button", width / 2, height / 2 + 50, 150, 50);
  
  rollDice();  // 程式開始時先擲一次
}

void draw() {
  background(240);

  fill(0);
  text("點擊下方按鈕重新擲骰子", width/2, 30);

  // 顯示玩家骰子
  drawDice(120, 120, playerDice);
  text("玩家：" + playerDice, 120, 220);

  // 顯示電腦骰子
  drawDice(380, 120, computerDice);
  text("電腦：" + computerDice, 380, 220);

  // 判斷結果
  String result;
  if (playerDice > computerDice) {
    result = "玩家勝利！🎉";
  } else if (playerDice < computerDice) {
    result = "電腦勝利！💻";
  } else {
    result = "平手！";
  }

  textSize(28);
  text(result, width/2, 270);
  textSize(24);

  // 顯示按鈕
  rollButton.display();
}

// 擲骰子（1~6）
void rollDice() {
  playerDice = int(random(1, 7));
  computerDice = int(random(1, 7));
}

// 繪製骰子
void drawDice(float x, float y, int value) {
  rectMode(CENTER);
  fill(255);
  stroke(0);
  rect(x, y, 100, 100, 15);

  fill(0);
  float d = 15;

  // 依照點數畫骰子
  switch(value) {
    case 1:
      drawDot(x, y);
      break;
    case 2:
      drawDot(x-25, y-25);
      drawDot(x+25, y+25);
      break;
    case 3:
      drawDot(x-25, y-25);
      drawDot(x, y);
      drawDot(x+25, y+25);
      break;
    case 4:
      drawDot(x-25, y-25);
      drawDot(x+25, y-25);
      drawDot(x-25, y+25);
      drawDot(x+25, y+25);
      break;
    case 5:
      drawDot(x-25, y-25);
      drawDot(x+25, y-25);
      drawDot(x, y);
      drawDot(x-25, y+25);
      drawDot(x+25, y+25);
      break;
    case 6:
      drawDot(x-25, y-25);
      drawDot(x+25, y-25);
      drawDot(x-25, y);
      drawDot(x+25, y);
      drawDot(x-25, y+25);
      drawDot(x+25, y+25);
      break;
  }
}

void drawDot(float x, float y) {
  ellipse(x, y, 15, 15);
}

// Button 類別定義
class Button {
  String label;
  float x, y, w, h;
  
  Button(String label, float x, float y, float w, float h) {
    this.label = label;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void display() {
    // 立體感陰影
    fill(0, 0, 0, 50);
    rectMode(CENTER);
    rect(x + 5, y + 5, w, h, 10); // 暗陰影

    // 按鈕背景顏色
    fill(255, 0, 0);
    rect(x, y, w, h, 10); // 按鈕

    // 按鈕文字
    fill(255);
    textSize(18);
    text(label, x, y); // 顯示文字
    
    // 檢查是否有按下按鈕
    if (isMouseOver()) {
      fill(255, 100);
      rect(x, y, w, h, 10);
    }
  }
  
  // 檢查滑鼠是否在按鈕上
  boolean isMouseOver() {
    return mouseX > x - w / 2 && mouseX < x + w / 2 && mouseY > y - h / 2 && mouseY < y + h / 2;
  }
  
  // 處理點擊事件
  void click() {
    if (isMouseOver()) {
      rollDice();
    }
  }
}

// 在滑鼠按下時檢查按鈕是否被點擊
void mousePressed() {
  rollButton.click();
}
