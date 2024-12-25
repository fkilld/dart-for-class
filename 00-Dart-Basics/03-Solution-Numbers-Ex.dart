void main() {
  // Given double variable
  var someNum = 3.1;

  // Rounding the number to the nearest integer
  var roundedNum = someNum.round(); // .round() rounds to the nearest integer
  print(roundedNum); // Output: 3

  // Demonstrating rounding behavior for a number with 0.5
  someNum = 3.5;
  roundedNum = someNum.round(); // Rounds up for .5
  print(roundedNum); // Output: 4

  // BONUS: Ensuring specific rounding behavior for 0.5 cases
  // Rounding up explicitly
  someNum = 3.5;
  var roundedUp = someNum.ceil(); // .ceil() always rounds up
  print(roundedUp); // Output: 4

  // Rounding down explicitly
  someNum = 3.5;
  var roundedDown = someNum.floor(); // .floor() always rounds down
  print(roundedDown); // Output: 3

  // Additional example: Manually handling 0.5 case
  someNum = 3.5;
  var manualRound = someNum - someNum.truncate() == 0.5
      ? someNum.truncate() + 1 // Round up if exactly .5
      : someNum.round(); // Otherwise, use normal rounding
  print(manualRound); // Output: 4 (since .5 is rounded up manually)
}
