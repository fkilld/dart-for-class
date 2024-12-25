void main() {
  // Demonstrating the 'String' data type
  var s1 = "This is a string"; // 's1' is inferred as a String
  print(s1); // Output: This is a string
  print(
      s1.toUpperCase()); // Converts 's1' to uppercase, Output: THIS IS A STRING
  var upperS1 = s1.toUpperCase(); // Storing the uppercase version in 'upperS1'
  print(s1); // Original string remains unchanged, Output: This is a string
  print(upperS1); // Output: THIS IS A STRING

  // Demonstrating the 'int' data type
  int myAge = 25; // 'myAge' explicitly declared as an integer
  print(myAge); // Output: 25

  // Demonstrating the 'double' data type
  double pi = 3.14159; // 'pi' explicitly declared as a double
  print(pi); // Output: 3.14159

  // Demonstrating the 'bool' data type
  bool isDartFun = true; // 'isDartFun' explicitly declared as a boolean
  print(isDartFun); // Output: true

  // Demonstrating the 'dynamic' data type
  dynamic flexibleVariable =
      "I am a string"; // 'flexibleVariable' can hold any type
  print(flexibleVariable); // Output: I am a string
  flexibleVariable = 42; // Changing the value to an integer
  print(flexibleVariable); // Output: 42

  // Demonstrating the 'List' data type
  List<int> numbers = [1, 2, 3, 4, 5]; // A list of integers
  print(numbers); // Output: [1, 2, 3, 4, 5]

  // Demonstrating the 'Map' data type
  Map<String, int> person = {
    "age": 25,
    "height": 175
  }; // A map with String keys and int values
  print(person); // Output: {age: 25, height: 175}

  // Demonstrating the 'Set' data type
  Set<int> uniqueNumbers = {
    1,
    2,
    3,
    3,
    4
  }; // A set automatically removes duplicates
  print(uniqueNumbers); // Output: {1, 2, 3, 4}

  // Demonstrating the 'null' value
  String?
      nullableString; // 'nullableString' can be null because of the '?' suffix
  print(nullableString); // Output: null

  // Demonstrating 'var' (type inferred by Dart)
  var inferredVariable =
      "This is inferred as a String"; // Dart infers the type as String
  print(inferredVariable); // Output: This is inferred as a String
}
