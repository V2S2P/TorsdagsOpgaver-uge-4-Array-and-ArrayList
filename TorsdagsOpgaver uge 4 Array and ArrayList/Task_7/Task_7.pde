import java.util.*;
ArrayList<Integer> ints = new ArrayList<>(Arrays.asList(10, 20, 30, 50));
ArrayList<String> strings = new ArrayList<>(Arrays.asList("Valdemar", "Kasper", "Peter"));
ArrayList<Boolean> bools = new ArrayList<>(Arrays.asList(true, false, false));

void printName(ArrayList<String> stringsToPrint) {
  {
    println(stringsToPrint);
  }
}

int sumOfInt(ArrayList<Integer> intsToPrint) { // We make a method that takes ArrayList of type integers as
  // parameter.
  int sum = 0; // We initialize a variable called "sum" to have it hold our arraylists total value.
  for (int num : intsToPrint) { // We go through the entire list and for each "num" (the current element of
    // the ArrayList) we add it to the total stored in "sum"
    sum += num;
  }
  println(sum);
  return sum; // When the loop is finished we now have our variable "sum" that holds the total of all our
  // elements from our list, we then return it and print it out in setup().
}

double averageInt(ArrayList<Integer> intsToPrint) { // receives an arraylist of type integer as parameter
  if (intsToPrint.isEmpty()) { // First we can check if the list we have is empty, if it is we just return 0
    // so it can't divide 0 by 0.
    return 0;
  }

  int average = 0;
  for (int num : intsToPrint) { // We loop through each element in the list and add it to the average variable
    // we made above.
    average += num;
  }
  return (double)average / intsToPrint.size();
  // when our for each loop is through the entire list, we now have
  // our variable "average" which holds the combined value of our lists values and then we divide that by
  // our method parameters size to get the average and return it.
}

void setup() {

  printName(strings);
  sumOfInt(ints);
  println(averageInt(ints));
}
