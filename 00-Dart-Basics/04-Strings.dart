void main() {
  // Declaring a String variable explicitly
  String nameOne = "Jose"; // 'nameOne' is explicitly declared as a String

  // Declaring a String variable using 'var'
  var nameTwo = "Mimi"; // Dart infers that 'nameTwo' is a String

  // Printing a variable using string interpolation
  print(
      "This is nameOne variable: $nameOne"); // Output: This is nameOne variable: Jose

  // Escaping a dollar sign within a string
  print("This is how to escape \$ a dollar sign");
  // Output: This is how to escape $ a dollar sign

  // Using string interpolation to compute the length of a string
  print("The length of nameTwo is ${nameTwo.length}");
  // Output: The length of nameTwo is 4

  // Using string interpolation to call a method on a variable
  print("The upperCase version of nameOne is ${nameOne.toUpperCase()}");
  // Output: The upperCase version of nameOne is JOSE
}
