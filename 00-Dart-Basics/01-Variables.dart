// https://dart.dev/guides/language/effective-dart/style
void main() {
  // Following the convention of lowerCamelCase for variable names

  // Defining a variable with type declaration
  // Syntax: type variableName = value;

  String myName =
      "Jose"; // Declaring a String variable named 'myName' and assigning it the value "Jose"

  // Printing the value of the variable to the console
  print(myName); // Output: Jose
}


////////////////////////////
////////////////////////////
///In Dart, you can create variables using different ways and keywords depending on the use case.:

//  1. Using `var`
//    - Automatically infers the type of the variable based on the value assigned.
//    ```dart
//    var name = 'Azad'; // Dart infers this as String
//    var age = 25;      // Dart infers this as int
//    ```

//  2. Using `final`
//    - Declares a variable that can only be set once.
//    - It's used when the value is constant during runtime.
//    ```dart
//    final country = 'India'; // Cannot be changed later
//    ```

//  3. Using `const`
//    - Declares compile-time constants.
//    - The value must be known at compile time.
//    ```dart
//    const pi = 3.14; // Compile-time constant
//    const appName = 'FlutterApp';
//    ```

//  4. Explicit Data Types
//    - You can explicitly specify the data type.
//    ```dart
//    String city = 'Pune';
//    int population = 5000000;
//    double temperature = 36.5;
//    bool isActive = true;
//    ```

//  5. Using `late`
//    - Declares a variable that will be initialized later but ensures it is assigned before use.
//    ```dart
//    late String greeting;
//    greeting = 'Hello, Azad!';
//    ```

//  6. Dynamic Type
//    - A variable that can hold values of any type.
//    ```dart
//    dynamic value = 'Azad';
//    value = 25; // No error, type can change
//    ```

//  Key Notes:
// - Unlimited Variables: Dart does not restrict the number of variables you can create, but memory and performance constraints of the system should be considered.
// - Use `var` for general-purpose variables.
// - Use `final` for values that don't change after initialization.
// - Use `const` for compile-time constants.
// - Use explicit types when clarity is needed.