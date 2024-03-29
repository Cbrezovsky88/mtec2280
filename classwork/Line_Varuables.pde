// create a variable of type "int" which 
// means that only it will store whole numbers
//and give it a value
int thickness = 1;
void setup() {
  size(600, 500);
  background(255);  // white background
}
void draw() {
}
// if the user presses a key...
void keyPressed() {
  // print out whatever key is being pressed
  println(key);
  // when using if statements use two equal signs
  // to ask about a value
  // when talking about keyboard keys, use single quotes
  if (key == 'r') {
    stroke(255, 0, 0);  // change stroke to green
  }
  if (key == 'g') {
    stroke(0, 255, 0);  // change stroke to green
  }
  if (key == 'b') {
    stroke(0, 0, 255);  // change stroke to green
  }
  if (key == 'q') {
   background(255); 
  }
  if( key == 'z') {
   stroke(255); 
  }
  // for up and down keys we can use keyCode
  // if user pressed the UP key
  if (keyCode == UP) {
    //increase the value of thickness by 1
    thickness = thickness + 1;
    //Use it it stroke so line grows.
    strokeWeight(thickness);
    println("thickness;", thickness);
  }
  if (keyCode == DOWN) {
    if (thickness > 0) {
    //increase the value of thickness by 1
    thickness = thickness - 1;
    //Use it it stroke so line grows.
    strokeWeight(thickness);
    }
    println("thickness;", thickness);
  }
}
// execute the following when the mouse is
// clicked and moved simultaneously
void mouseDragged() {
  // draw a line from where the mouse is now
  // to where it was last frame
  line(mouseX, mouseY, pmouseX, pmouseY);
  //ellipse(mouseX, mouseY, 10, 10);
}
