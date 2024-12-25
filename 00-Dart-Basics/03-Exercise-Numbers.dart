void main() {
  // Given double variable
  var someNum = 3.1;

  // Rounding to the nearest integer
  var roundedNum = someNum.round(); // .round() rounds to the nearest integer
  print(roundedNum); // Output: 3

  // Example with a value of 3.5 to demonstrate rounding
  someNum = 3.5;
  roundedNum = someNum.round();
  print(roundedNum); // Output: 4 (rounded up for 0.5)

  // BONUS: Controlling rounding behavior for 0.5 cases
  // Ensure 0.5 is always rounded up
  someNum = 2.5;
  var roundedUp = someNum.ceil(); // .ceil() always rounds up
  print(roundedUp); // Output: 3

  // Ensure 0.5 is always rounded down
  someNum = 2.5;
  var roundedDown = someNum.floor(); // .floor() always rounds down
  print(roundedDown); // Output: 2
}
