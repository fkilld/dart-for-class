void main() {
  // Using 'var' (statically typed)
  var a = 10; // 'a' is inferred as an integer (int) based on the assigned value
  a = 100; // Reassigning 'a' with another integer is allowed
  // a = '100'; // ERROR: Static typing prevents assigning a string to an int variable

  // Using 'dynamic' (dynamically typed)
  dynamic b = 100; // 'b' starts as an integer
  b = true; // Now 'b' is reassigned to a boolean
  b = 'hello'; // Finally, 'b' is reassigned to a string
  print(b); // Output: hello
}
