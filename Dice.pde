int total = 0;
int dienum = 0;

void setup(){
  size(460,500);
  noLoop();
}
void draw(){
  background(255);
  for (int y = 0; y<300; y+=120){
    for(int x = 0; x<400; x+=120){
      Die bob = new Die(x,y);
      bob.show();
      bob.roll();
      total += bob.rolled;
    }
   textSize(50);
   text("sum =",80,400);
   text(total, 260,400);
  }
}
void mousePressed(){
  redraw();
  total = 0;
}
class Die {
  int rolled;
  int myX, myY;
  Die(int x, int y){
    rolled = (int)(Math.random()*6)+1;
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
      dienum = 2;
    }
    else if (rolled == 3){
      ellipse(myX + 25, myY +75, 20,20);
      ellipse(myX + 50, myY +50, 20,20);
      ellipse(myX + 75, myY +25, 20,20);
      dienum = 3;
    }
    else if (rolled == 4){
       ellipse(myX + 25, myY +75, 20,20);
       ellipse(myX + 25, myY +25, 20,20);
       ellipse(myX + 75, myY +75, 20,20);
       ellipse(myX + 75, myY +25, 20,20);
       dienum = 4;
    }
    else if(rolled == 5){
      ellipse(myX + 25, myY +75, 20,20);
      ellipse(myX + 25, myY +25, 20,20);
      ellipse(myX + 75, myY +75, 20,20);
      ellipse(myX + 75, myY +25, 20,20);
      ellipse(myX + 50, myY +50, 20,20);
      dienum = 5;
    }
    else {
      ellipse(myX + 25, myY +75, 20,20);
      ellipse(myX + 25, myY +25, 20,20);
      ellipse(myX + 75, myY +75, 20,20);
      ellipse(myX + 75, myY +25, 20,20);
      ellipse(myX + 25, myY +50, 20,20);
      ellipse(myX + 75, myY +50, 20,20);
      dienum = 6;
    }
  
  }
}
