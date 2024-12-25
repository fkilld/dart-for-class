void main() {
  // TYPICAL ASSIGNMENTS (REASSIGNABLE)
  var a = 0; // 'var' allows reassignment and dynamic type inference
  print(a); // Output: 0
  a = 20; // Reassigning 'a' to a new value
  print(a); // Output: 20

  // FINAL VARIABLES (IMMUTABLE AFTER ASSIGNMENT)
  final version = 2.1; // 'final' means this variable cannot be reassigned
  print(version); // Output: 2.1
  // version = 3.2; // ERROR: Cannot assign a value to a final variable

  // FINAL CAN BE USED FOR RUNTIME CALCULATIONS
  // 'final' variables can be assigned the result of runtime calculations
  final result = a * 10; // 'a' is used here, which is determined at runtime
  print(result); // Output: 200

  // CONST VARIABLES (COMPILE-TIME CONSTANT)
  // 'const' requires that the value be determined at compile time
  const myVar = 100; // A constant value, determined at compile time
  print(myVar); // Output: 100
  // const anotherVar = a * 10; // ERROR: 'a' is not a compile-time constant

  // CONST IS MORE RESTRICTIVE THAN FINAL
  // Unlike 'final', 'const' cannot be assigned a runtime-calculated value
}
