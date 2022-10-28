Bubble [] bob;

void setup() {
 size(500,500);
 bob = new Bubble[50];
 for (int i = 0; i < 50; i++) {
 bob[i] = new Bubble();
 }
}

void draw() {
 background(0);
 for (int i = 0; i <= (bob.length-1); i++) {
   bob[i].show();
   bob[i].fall();
 }
}

void mousePressed() {
  for (int i = 0; i <= (bob.length-1); i++) {
   bob[i].reset();
 }
}

class Bubble {
 int myX, myY, size, myColor;
 boolean hit;
 Bubble() {
   myX = (int)(Math.random()*500);
   myY = (int)(Math.random()*200)-50;
   size = (int)(Math.random()*20)+30;
   myColor = color((int)(Math.random()*255));
 }
 void fall() {
   myX = myX + (int)(Math.random()*5)-2;
   myY = myY + (int)(Math.random()*5)-1;
 }
 void show() {
   if (dist(mouseX, mouseY, myX, myY) < size/2) {
     hit = true; 
   }
   if (hit == false) {
     myColor = color((int)(Math.random()*255));
   } else {
     myColor = color(240, 80, 200);
   }
   fill(myColor);
   ellipse(myX, myY, size, size); 
   if (myY > 495) {
     myY = 0;
     myX = (int)(Math.random()*500);
     myColor = color((int)(Math.random()*255));
   }
}
  void reset() {
    hit = false;
    myColor = color((int)(Math.random()*255));
  }
}
