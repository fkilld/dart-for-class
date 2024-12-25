void main() {
  // Declaring an integer variable
  int numberOne = 13; // 'numberOne' is explicitly declared as an integer
  print(numberOne); // Output: 13

  // Declaring a double (floating-point number) variable
  double numberTwo = 14.2; // 'numberTwo' is explicitly declared as a double
  print(numberTwo); // Output: 14.2

  // Declaring a number in exponential notation
  var exponentNum = 1.2e3; // 1.2e3 means 1.2 * 10^3, equivalent to 1200
  print(exponentNum); // Output: 1200.0 (as a double)

  // Converting from String to a number (double)
  var stringNum = '14.7'; // 'stringNum' is a string representation of a number
  var convertNum = double.parse(stringNum); // Converts the string to a double
  print(convertNum); // Output: 14.7

  // Displaying the runtime types of variables
  print(stringNum.runtimeType); // Output: String (type of 'stringNum')
  print(convertNum.runtimeType); // Output: double (type of 'convertNum')
}
