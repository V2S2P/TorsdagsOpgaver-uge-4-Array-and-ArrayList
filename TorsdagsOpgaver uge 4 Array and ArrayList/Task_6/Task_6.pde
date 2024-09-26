// Global variables: //<>// //<>//
int[][] board  = new int[8][8]; // This creates a 2D array named "board" with 8 rows and 8 columns. Each element in this array
// can store an int.
int sideLength = 40; // This sets a global variable "sideLength" to 40, which is the size of each square in the grid.

void setup() {
  size(320, 320);
  noLoop();

  // This double for loop iterates over every cell of the 2D array "board" and fill it with alternating values of 0 and 1 (chess)
  for (int i = 0; i < board.length; i++) { // The outer loop (i) iterates over the rows of the array. board.length is 8, so the
    // the outer loop runs 8 times (once for each row).
    for (int j = 0; j < board[i].length; j++) { // The inner loop iterates over the columns(j) of each row(i). board[i].length
      // also returns 8 because there are 8 columns. The inner loop runs 8 times for each row.
      board[i][j] = (i + j) % 2; // Here we say for each cell in the array at position [i](row)[j](column), the value is et to
      // either 0 or 1 based on the sum of i + j. i + j gives the sum of the row and column indices.
      // The modulus operator % divides the sum of i + j by 2 and gives the remainder:
      // if the remainder is 0 the value will be 0 and 0 will be printed out.
      // if the remainder is 1 the value will be 1 and 1 will be printed out.
    }
  }

  for (int i = 0; i < board.length; i++) { // To visulize the board I print out 0's and 1's with this double for loop.
    for (int j = 0; j < board[i].length; j++) {
      print(board[i][j] + " "); // Here we print each element in the current row followed by a space.
    }
    println(); // here we move to the next line after printing each row, so that the output is displayed in a grid.
  }
}
void draw() {
  for (int i = 0; i < board.length; i++) { // We use the same double for loop to go through each row(i) and each column(j) in that row
    for (int j = 0; j < board[i].length; j++) {
      if (board[i][j] == 0) { // If the value(1 or 0) is 0 we fill a square with white
        noStroke();
        fill(255);
      } else { // If the value is 1 we fill the square with black
        noStroke();
        fill(0);
      }

      rect(i * sideLength, j * sideLength, sideLength, sideLength); // Here we then draw a rectangle for each element in our 2D array
      // The position of the rectangles are determined bu the current row(i) and column(j), scaled by the sideLength which is 40
    }
  }
}

/*
First few values for i = 0 (first row):
 i = 0, j = 0: (0 + 0) % 2 = 0 → board[0][0] = 0
 Condition board[0][0] == 0 is true, so the square will be white.
 
 i = 0, j = 1: (0 + 1) % 2 = 1 → board[0][1] = 1
 Condition board[0][1] == 0 is false, so the square will be black.
 
 i = 0, j = 2: (0 + 2) % 2 = 0 → board[0][2] = 0
 Condition board[0][2] == 0 is true, so the square will be white.
 
 
 
 Second row values for i = 1:
 i = 1, j = 0: (1 + 0) % 2 = 1 → board[1][0] = 1
 
 Condition board[1][0] == 0 is false, so the square will be black.
 i = 1, j = 1: (1 + 1) % 2 = 0 → board[1][1] = 0
 
 Condition board[1][1] == 0 is true, so the square will be white.
 i = 1, j = 2: (1 + 2) % 2 = 1 → board[1][2] = 1
 
 Condition board[1][2] == 0 is false, so the square will be black
 */
