// Array of type int, called "arr". It's been declared and initialized with values of the same type.
int[] arr = {28, 230, 9, 310, 72};

void setup() {
  println(getRandom());
}


int getRandom() {
  int randomIndex = int(random(arr.length)); // The random() function generates a random floating-point number between 0 (inclusive)
  // and arr.length(exclusive). arr.length is 5 so random(5) generates a random number between 0.0 and 4.999, the int converts the float
  // to an integer, rounding.
  return arr[randomIndex]; // We return the element at the randomly generated index from the arr array. Example:
  // randomIndex is 2, it returns arr[2] which is the number 9 in the array.
}
