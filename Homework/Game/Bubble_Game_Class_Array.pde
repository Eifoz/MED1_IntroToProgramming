Bubble[] bubbles = new Bubble[20];

float score = 0.0;

void setup() {
  size(640, 360);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(64);
  }
}

void draw() {
  background(255);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].descend();
    bubbles[i].top();
    
    textSize(14);
    fill(0,0,0);
    text(score,590,20);
  }
  println(score);
}
