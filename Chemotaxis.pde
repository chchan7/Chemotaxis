Snow [] bob;
void setup() {
  frameRate(100);
  size(600,600);
  bob = new Snow[2000];
  for (int i = 0; i < bob.length; i++){
    bob[i] = new Snow();
  }
 }
 
void draw() {
  background(100,100,100);
  for (int i = 0; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
    
    //snow field
    fill(250,250,250);
    noStroke();
    rect(0,500,600,100);
    
    //igloo
    fill(250,250,250);
    stroke(0);
    strokeWeight(3);
    arc(300,500,250,300,PI,2 * PI);
    arc(300,500,150,200,PI,2 * PI);
    line(300,350,300,400);
  }
}

void mousePressed() {
    for (int i = 0; i < bob.length; i++) {
    bob[i] = new Snow();
  }
}  

class Snow {
  int myX, myY, myColor;
  Snow() {
    myX = (int)(Math.random() * 1000) - 200;
    myY = (int)(Math.random() * 1000) - 200;
    myColor = color (250,250,250);
    move();
  }
  void move() {
    myX += 10;
    myY += 10;
   }
  void show() {
    fill(myColor);
    noStroke();
    ellipse(myX,myY,10,10);
  }
}
