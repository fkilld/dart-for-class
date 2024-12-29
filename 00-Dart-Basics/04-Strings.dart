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
////////////////////////////
////////////////////////////
// ////////////////////////////
// Here are the most commonly used `String` methods in Dart, along with explanations and examples:



//  1. `length`
// - Returns the number of characters in the string.
// ```dart
// String name = 'Dart';
// print(name.length); // Output: 4
// ```



//  2. `toLowerCase()`
// - Converts all characters to lowercase.
// ```dart
// String text = 'HELLO';
// print(text.toLowerCase()); // Output: hello
// ```



//  3. `toUpperCase()`
// - Converts all characters to uppercase.
// ```dart
// String text = 'hello';
// print(text.toUpperCase()); // Output: HELLO
// ```



//  4. `trim()`
// - Removes leading and trailing whitespaces.
// ```dart
// String text = '  Dart  ';
// print(text.trim()); // Output: Dart
// ```



//  5. `trimLeft()` / `trimRight()`
// - Removes leading or trailing whitespaces respectively.
// ```dart
// String text = '  Dart  ';
// print(text.trimLeft());  // Output: Dart  
// print(text.trimRight()); // Output:   Dart
// ```



//  6. `contains()`
// - Checks if the string contains a specific substring.
// ```dart
// String text = 'Hello Dart';
// print(text.contains('Dart')); // Output: true
// ```



//  7. `startsWith()`
// - Checks if the string starts with a specific substring.
// ```dart
// String text = 'Flutter is great';
// print(text.startsWith('Flutter')); // Output: true
// ```



//  8. `endsWith()`
// - Checks if the string ends with a specific substring.
// ```dart
// String text = 'Dart programming';
// print(text.endsWith('programming')); // Output: true
// ```



//  9. `indexOf()`
// - Finds the index of the first occurrence of a substring.
// ```dart
// String text = 'Learn Dart';
// print(text.indexOf('Dart')); // Output: 6
// ```



//  10. `lastIndexOf()`
// - Finds the index of the last occurrence of a substring.
// ```dart
// String text = 'Dart is awesome. Dart is fun.';
// print(text.lastIndexOf('Dart')); // Output: 16
// ```



//  11. `substring()`
// - Extracts a portion of the string based on start and optional end indices.
// ```dart
// String text = 'Hello Dart';
// print(text.substring(6));    // Output: Dart
// print(text.substring(0, 5)); // Output: Hello
// ```



//  12. `replaceAll()`
// - Replaces all occurrences of a substring with another string.
// ```dart
// String text = 'Dart is great. Dart is fun.';
// print(text.replaceAll('Dart', 'Flutter')); // Output: Flutter is great. Flutter is fun.
// ```



//  13. `replaceFirst()`
// - Replaces the first occurrence of a substring with another string.
// ```dart
// String text = 'Dart is great. Dart is fun.';
// print(text.replaceFirst('Dart', 'Flutter')); // Output: Flutter is great. Dart is fun.
// ```



//  14. `replaceRange()`
// - Replaces characters in a specified range.
// ```dart
// String text = 'Hello Dart';
// print(text.replaceRange(6, 10, 'Flutter')); // Output: Hello Flutter
// ```



//  15. `split()`
// - Splits the string into a list of substrings based on a delimiter.
// ```dart
// String text = 'apple,banana,grape';
// List<String> fruits = text.split(',');
// print(fruits); // Output: [apple, banana, grape]
// ```



//  16. `join()`
// - Joins a list of strings into a single string.
// ```dart
// List<String> words = ['Hello', 'Dart'];
// print(words.join(' ')); // Output: Hello Dart
// ```



//  17. `codeUnitAt()`
// - Returns the Unicode code of the character at the given index.
// ```dart
// String text = 'Dart';
// print(text.codeUnitAt(0)); // Output: 68 (Unicode of 'D')
// ```



//  18. `compareTo()`
// - Compares two strings lexicographically.
// ```dart
// String a = 'abc';
// String b = 'xyz';
// print(a.compareTo(b)); // Output: -1 (a < b)
// ```



//  19. `isEmpty` / `isNotEmpty`
// - Checks if the string is empty or not.
// ```dart
// String text = '';
// print(text.isEmpty);    // Output: true
// print(text.isNotEmpty); // Output: false
// ```



//  20. `padLeft()` / `padRight()`
// - Pads the string on the left or right with a specific character.
// ```dart
// String text = 'Dart';
// print(text.padLeft(10, '*'));  // Output: Dart
// print(text.padRight(10, '*')); // Output: Dart
// ```



//  21. `toString()`
// - Converts any object to its string representation.
// ```dart
// int number = 42;
// print(number.toString()); // Output: 42
// ```



//  22. `replaceAllMapped()`
// - Replaces substrings using a mapping function.
// ```dart
// String text = 'Dart 1, Dart 2';
// print(text.replaceAllMapped(RegExp(r'Dart \d'), (match) {
//   return match.group(0)!.toUpperCase();
// })); // Output: DART 1, DART 2
// ```



//  23. `toLowerCase()` and `toUpperCase()`
// - Converts the string to lower or upper case.
// ```dart
// String name = "Azad";
// print(name.toLowerCase()); // azad
// print(name.toUpperCase()); // AZAD
// ```



// These methods provide extensive functionality for handling strings in Dart. 