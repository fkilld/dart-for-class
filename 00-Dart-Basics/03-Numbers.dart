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

////////////////////////////
////////////////////////////
////////////////////////////
///

// In Dart, `Number` is a superclass for `int` and `double`, offering various methods to work with numeric values. Here are the most commonly used methods for working with numbers, along with examples:

// 

// ### Methods for Numbers

// 

// ### 1. `abs()`
// - Returns the absolute value of the number.
// ```dart
// int negative = -10;
// print(negative.abs()); // Output: 10
// ```

// 

// ### 2. `ceil()`
// - Rounds the number up to the nearest integer.
// ```dart
// double value = 4.2;
// print(value.ceil()); // Output: 5
// ```

// 

// ### 3. `ceilToDouble()`
// - Rounds the number up to the nearest integer and returns it as a double.
// ```dart
// double value = 4.2;
// print(value.ceilToDouble()); // Output: 5.0
// ```

// 

// ### 4. `floor()`
// - Rounds the number down to the nearest integer.
// ```dart
// double value = 4.8;
// print(value.floor()); // Output: 4
// ```

// 

// ### 5. `floorToDouble()`
// - Rounds the number down to the nearest integer and returns it as a double.
// ```dart
// double value = 4.8;
// print(value.floorToDouble()); // Output: 4.0
// ```

// 

// ### 6. `round()`
// - Rounds the number to the nearest integer.
// ```dart
// double value = 4.5;
// print(value.round()); // Output: 5
// ```

// 

// ### 7. `roundToDouble()`
// - Rounds the number to the nearest integer and returns it as a double.
// ```dart
// double value = 4.5;
// print(value.roundToDouble()); // Output: 5.0
// ```

// 

// ### 8. `truncate()`
// - Removes the fractional part of a double and returns the integer part.
// ```dart
// double value = 4.8;
// print(value.truncate()); // Output: 4
// ```

// 

// ### 9. `truncateToDouble()`
// - Removes the fractional part and returns the integer part as a double.
// ```dart
// double value = 4.8;
// print(value.truncateToDouble()); // Output: 4.0
// ```

// 

// ### 10. `toString()`
// - Converts the number to a string.
// ```dart
// int value = 42;
// print(value.toString()); // Output: "42"
// ```

// 

// ### 11. `toStringAsFixed()`
// - Converts the number to a string with a fixed number of decimal places.
// ```dart
// double value = 4.56789;
// print(value.toStringAsFixed(2)); // Output: "4.57"
// ```

// 

// ### 12. `toStringAsExponential()`
// - Converts the number to a string in exponential notation.
// ```dart
// double value = 1234.56;
// print(value.toStringAsExponential(2)); // Output: "1.23e+3"
// ```

// 

// ### 13. `toStringAsPrecision()`
// - Converts the number to a string with a specified number of significant digits.
// ```dart
// double value = 123.456;
// print(value.toStringAsPrecision(4)); // Output: "123.5"
// ```

// 

// ### 14. `isFinite`
// - Checks if the number is finite.
// ```dart
// double value = 4.5;
// print(value.isFinite); // Output: true
// ```

// 

// ### 15. `isInfinite`
// - Checks if the number is infinite.
// ```dart
// double value = double.infinity;
// print(value.isInfinite); // Output: true
// ```

// 

// ### 16. `isNaN`
// - Checks if the value is `NaN` (Not a Number).
// ```dart
// double value = 0 / 0;
// print(value.isNaN); // Output: true
// ```

// 

// ### 17. `isNegative`
// - Checks if the number is negative.
// ```dart
// double value = -5.5;
// print(value.isNegative); // Output: true
// ```

// 

// ### 18. `sign`
// - Returns `-1` for negative numbers, `0` for zero, and `1` for positive numbers.
// ```dart
// double value = -3.5;
// print(value.sign); // Output: -1
// ```

// 

// ### 19. `clamp()`
// - Restricts the number to a given range.
// ```dart
// double value = 10.5;
// print(value.clamp(5, 10)); // Output: 10
// ```

// 

// ### 20. `remainder()`
// - Returns the remainder of the division.
// ```dart
// int value = 10;
// print(value.remainder(3)); // Output: 1
// ```

// 

// ### 21. `compareTo()`
// - Compares the number with another number.
//   - Returns `0` if equal, `1` if greater, `-1` if less.
// ```dart
// int value = 10;
// print(value.compareTo(5)); // Output: 1
// print(value.compareTo(10)); // Output: 0
// print(value.compareTo(15)); // Output: -1
// ```

// 

// ### 22. `toInt()`
// - Converts the number to an integer (truncates the decimal part).
// ```dart
// double value = 4.9;
// print(value.toInt()); // Output: 4
// ```

// 

// ### 23. `toDouble()`
// - Converts the number to a double.
// ```dart
// int value = 42;
// print(value.toDouble()); // Output: 42.0
// ```

// 

// ### 24. `hashCode`
// - Returns a hash code for the number.
// ```dart
// int value = 42;
// print(value.hashCode); // Output: Unique integer hash
// ```

// 

// ### 25. Mathematical Operations
//    - You can also perform basic mathematical operations using Dart:
//    ```dart
//    int a = 10;
//    int b = 3;

//    print(a + b); // Addition: 13
//    print(a - b); // Subtraction: 7
//    print(a * b); // Multiplication: 30
//    print(a / b); // Division: 3.3333
//    print(a ~/ b); // Integer Division: 3
//    print(a % b); // Modulus: 1
//    ```

// 

// ### Summary of Usage
// | Method             | Description                             | Example Output      |
// |-------------------------|---------------------------------------------|--------------------------|
// | `abs()`                | Absolute value                              | `(-10).abs()` → `10`    |
// | `ceil()`               | Round up                                    | `(4.2).ceil()` → `5`    |
// | `floor()`              | Round down                                  | `(4.8).floor()` → `4`   |
// | `round()`              | Round to nearest                            | `(4.5).round()` → `5`   |
// | `toString()`           | Convert to string                           | `(42).toString()` → `"42"` |
// | `clamp(min, max)`      | Restrict to range                           | `(10.5).clamp(5, 10)` → `10` |
// | `compareTo()`          | Compare with another number                 | `(10).compareTo(5)` → `1` |
// | `isNegative`           | Check if negative                           | `(-5.5).isNegative` → `true` |
// | `toStringAsFixed()`    | Fixed decimal places                        | `(4.56789).toStringAsFixed(2)` → `"4.57"` |

// Dart's number methods provide powerful utilities for handling numeric data effectively.