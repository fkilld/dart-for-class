void main() {
  // COMPARISON OPERATORS
  // Checking equality
  print(2 == 2); // Output: true (2 is equal to 2)

  // Checking inequality
  print(2 != 3); // Output: true (2 is not equal to 3)

  // Checking greater than
  print(3 > 2); // Output: true (3 is greater than 2)

  // Checking less than
  print(2 < 3); // Output: true (2 is less than 3)

  // Checking greater than or equal to
  print(3 >= 3); // Output: true (3 is equal to 3, which satisfies >=)

  // Checking less than or equal to
  print(2 <= 3); // Output: true (2 is less than 3, which satisfies <=)

  // ASSERTIONS
  // Assertions are used to verify that a condition is true during development
  assert(2 == 2); // Passes because 2 equals 2

  // Declaring variables for further checks
  var a = 1;
  var b = 2;

  // Asserting a condition with variables
  assert(a == a); // Passes because 'a' equals itself (1 == 1)

  // Code continues if assertions pass
  print(
      'After Assert'); // Output: After Assert (reached because assertions did not fail)

  // TYPE TEST OPERATORS
  // Using 'is' to check if a variable is of a specific type
  print(a is int); // Output: true (variable 'a' is an integer)
}
