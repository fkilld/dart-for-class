void main() {
  // LOGICAL AND (&&)
  // The AND operator (&&) returns true only if both conditions are true
  print(1 == 1 && 1 != 2);
  // First condition: 1 == 1 (true)
  // Second condition: 1 != 2 (true)
  // Both are true, so the result is true
  // Output: true

  // LOGICAL OR (||)
  // The OR operator (||) returns true if at least one condition is true
  print(1 != 1 || 1 == 1);
  // First condition: 1 != 1 (false)
  // Second condition: 1 == 1 (true)
  // One condition is true, so the result is true
  // Output: true

  // LOGICAL NOT (!)
  // The NOT operator (!) negates the value of a boolean expression
  print(!(true) && true);
  // NOT true is false (!true = false)
  // false AND true is false
  // Output: false
}
