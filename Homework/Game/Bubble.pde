class Bubble {

  float bubbleX;  // Bubble X
  float bubbleY;  // Bubble Y
  float bubbleS;  // Bubble Diameter
  float yspeed;



  Bubble(float tempS) { //Constructor
    bubbleX = random(width);
    bubbleY = height + 200;
    bubbleS = tempS;
    yspeed = random(0.5, 2.5);
  }

  void ascend() {
    bubbleY = bubbleY - yspeed;
    bubbleX = bubbleX + random(-2, +2);
  }

  void descend() {
    if (mousePressed) {
      if (mouseX > bubbleX - bubbleS/2 && mouseX < bubbleX + bubbleS/2 && mouseY > bubbleY - bubbleS/2 && mouseY < bubbleY + bubbleS/2) {
        yspeed -= 20;
        score += 1;
      }
    }
  }

  void top() {
    if (bubbleY < 0 - bubbleS) {
      bubbleY = height + bubbleS/2;
      bubbleX = random(width);
    }
  }



  void display() { 
    stroke(0);
    fill(150, 150, 150, 100);
    ellipse(bubbleX, bubbleY, bubbleS, bubbleS);
  }
} 
