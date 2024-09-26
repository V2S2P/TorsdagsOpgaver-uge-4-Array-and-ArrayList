// We start by declaring the Array of our Square objects, we call the array "squares" and say we want room for 10. It's in the global
// scope so it is accessible for everything.
Square[] squares = new Square[10];

void setup() {
  size(400, 400);

  for (int i = 0; i < squares.length; i++) { // A for loop that iterates through each index of the "squares" array, from 0 to 9.
    // Each iteration will create a new Square object.
    float x = 50 + (i * 20); // Variable to tell the new square objects being created where to be on the x-axis.
    float y = 30 + (i * 20); // Variable to tell them where to be on the y-axis.

    color c = color(random(255), random(255), random(255)); // Just giving the new Square objects a random color when they are created.

    squares[i] = new Square(x, y, c); // Here is where we create the new "Square" objects, the x,y,c are from the constructor which we
    // assign the value to with our float x, y and color c.
  }
  for (int i = 0; i < squares.length; i++) { // Another for loop that iterates over the "squares" array to display each square
    squares[i].display(); // We call our "display" method on each "Square" object that has been created, making it possible for us to
    // see when we run the program.
  }
}
