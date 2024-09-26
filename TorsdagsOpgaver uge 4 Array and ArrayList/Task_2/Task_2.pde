void setup() {
  printPartOfWord("Tullumhejhus", -2, 6);
}

void printPartOfWord(String word, int startIndex, int endIndex) {
  if (startIndex < 0) {
    println("You cannot print out a letter that does not exist in the index: " + startIndex);
    String part = word.substring(startIndex, endIndex);
  }
  if (startIndex < endIndex && endIndex <= word.length()) {
    String part = word.substring(startIndex, endIndex);
    println(part);
  } else {
    println("Out of bounds index");
  }

  /*if (word.length() < 4) { // If "word" is "cat" then word.length() is less than 4 so it should just print the word
   println(word);
   } else {
   String lastFour = word.substring(word.length() - 4); // We make a variable that holds a substring() method that takes the word and
   // subtracts 4 from it, so an example:
   // The word is "Tullumhejhus", it has 12 letters, so 12 - 4 is 8 so it will start at index 8 and print the remaining 4 letters/index
   println(lastFour);
   }*/
}
/*
The substring() method in Java allows you to specify which part of the string you want to extract.
 You give it a starting index (the position in the string where you want to begin extracting),
 and it returns a new string starting from that index to the end of the string.
 */
