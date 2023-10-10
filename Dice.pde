Die die1, die2, die3, die4, die5, die6, die7, die8, die9;
int totalSum = 0;

void setup() {
  size(410, 500);
  noLoop();

  // Initialize the nine dice objects separately and roll them once
  die1 = new Die(0, 0);
  die2 = new Die(150, 0);
  die3 = new Die(300, 0);
  die4 = new Die(0, 150);
  die5 = new Die(150, 150);
  die6 = new Die(300, 150);
  die7 = new Die(0, 300);
  die8 = new Die(150, 300);
  die9 = new Die(300, 300);

  die1.roll();
  die2.roll();
  die3.roll();
  die4.roll();
  die5.roll();
  die6.roll();
  die7.roll();
  die8.roll();
  die9.roll();
}

void draw() {
  background(255);
  totalSum = 0;  // Reset the total sum before each draw

  // Call show methods for each die instance and calculate the total sum
  die1.show();
  totalSum += die1.rolled;

  die2.show();
  totalSum += die2.rolled;

  die3.show();
  totalSum += die3.rolled;

  die4.show();
  totalSum += die4.rolled;

  die5.show();
  totalSum += die5.rolled;

  die6.show();
  totalSum += die6.rolled;

  die7.show();
  totalSum += die7.rolled;

  die8.show();
  totalSum += die8.rolled;

  die9.show();
  totalSum += die9.rolled;

  fill(0);
textSize(50);
  text("Total: " + totalSum, 190, 450);
}

void mousePressed(){
  die1.roll();
  die2.roll();
  die3.roll();
  die4.roll();
  die5.roll();
  die6.roll();
  die7.roll();
  die8.roll();
  die9.roll();
  redraw();
}
class Die {
  int rolled;
  int myX, myY;
  Die(int x, int y){
    rolled = (int)(Math.random()*6) +1;
    myX= x;
    myY = y;
  }  
  void roll(){
    rolled = (int)(Math.random()*6)+1;
  }
 void show() {
    fill(255,219,219);
    rect(myX, myY, 100, 100);
    fill(222,119,119);
    if (rolled == 1){
      ellipse(myX + 50,myY + 50,20,20);
      dienum = 1;
    }
    else if (rolled == 2){
      ellipse(myX+25, myY +75, 20,20);
      ellipse(myX +75, myY +25, 20,20);
    }
    else if (rolled == 3){
      ellipse(myX + 25, myY +75, 20,20);
      ellipse(myX + 50, myY +50, 20,20);
      ellipse(myX + 75, myY +25, 20,20);
    }
    else if (rolled == 4){
       ellipse(myX + 25, myY +75, 20,20);
       ellipse(myX + 25, myY +25, 20,20);
       ellipse(myX + 75, myY +75, 20,20);
       ellipse(myX + 75, myY +25, 20,20);
    }
    else if(rolled == 5){
      ellipse(myX + 25, myY +75, 20,20);
      ellipse(myX + 25, myY +25, 20,20);
      ellipse(myX + 75, myY +75, 20,20);
      ellipse(myX + 75, myY +25, 20,20);
      ellipse(myX + 50, myY +50, 20,20);
    }
    else {
      ellipse(myX + 25, myY +75, 20,20);
      ellipse(myX + 25, myY +25, 20,20);
      ellipse(myX + 75, myY +75, 20,20);
      ellipse(myX + 75, myY +25, 20,20);
      ellipse(myX + 25, myY +50, 20,20);
      ellipse(myX + 75, myY +50, 20,20);
    }
   
  }
   
}
