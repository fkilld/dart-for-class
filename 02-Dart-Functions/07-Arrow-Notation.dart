// This is an example of how to use arrow notation in Dart functions.

// void main() {
//   // The traditional function syntax uses the 'function' keyword and curly braces.
//   int traditionalSquare(int num) {
//     return num * num;
//   }

//   // Arrow notation allows us to use a more concise syntax for simple functions.
//   int arrowSquare(int num) => num * num;

//   // Both traditional and arrow functions can be assigned to variables.
//   var traditionalVariable = traditionalSquare(5);
//   var arrowVariable = arrowSquare(5);

//   print('Traditional square: $traditionalVariable'); // Output: Traditional square: 25
//   print('Arrow square: $arrowVariable'); // Output: Arrow square: 25

//   // Arrow notation can also be used for functions that return void.
//   void printMessage(String message) => print('Message: $message');

//   printMessage('Hello, World!'); // Output: Message: Hello, World!
// }

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
void main() {
//   In Dart, arrow functions (sometimes called "arrow syntax" or "arrow methods") are simply functions whose body is replaced by a single expression after the `=>` token. They’re a shorthand for single-statement functions. You can use the arrow syntax in many places:

// 1. Top-level functions
// 2. Class instance methods
// 3. Class static methods
// 4. Local (nested) functions
// 5. Anonymous functions (lambdas / function literals)
// 6. Extension methods
// 7. Operators (e.g., `operator +`)
// 8. Factory constructors
// 9. Async/Await functions

// Below is a comprehensive guide (with examples) on how to use arrow functions in each of these scenarios.

// ---

//  1. Top-level functions

// A top-level function is simply a function defined in a file (not inside a class). Using the arrow syntax:

// ```dart
// // Top-level arrow function
// int add(int a, int b) => a + b;
// ```

// Equivalent block-body function:

// ```dart
// int addBlock(int a, int b) {
//   return a + b;
// }
// ```

// ---

//  2. Class instance methods

// You can define instance methods in a class using arrow syntax if the method body is a single expression:

// ```dart
// class Calculator {
//   // Instance method using arrow syntax
//   int multiply(int x, int y) => x * y;

//   // Instance method with block body
//   int subtract(int x, int y) {
//     return x - y;
//   }
// }
// ```

// ---

//  3. Class static methods

// Static methods in a class can also use arrow syntax:

// ```dart
// class MathUtils {
//   // Static method arrow syntax
//   static int square(int x) => x * x;
// }
// ```

// ---

//  4. Local (nested) functions

// You can define small helper functions inside another function (local scope). These can also be arrow functions:

// ```dart
// void processNumbers() {
//   // Local function using arrow syntax
//   int doubleIt(int n) => n * 2;

//   print(doubleIt(5)); // 10
// }
// ```

// ---

//  5. Anonymous functions (Lambdas)

// Anonymous functions (sometimes called lambdas) are simply function expressions you can pass around. If your anonymous function has a single expression, you can use arrow syntax:

// ```dart
// void main() {
//   final numbers = [1, 2, 3];

//   // Anonymous function arrow syntax in map
//   final doubled = numbers.map((n) => n * 2).toList();
//   print(doubled); // [2, 4, 6]

//   // Storing an arrow function in a variable
//   final triple = (int n) => n * 3;
//   print(triple(4)); // 12
// }
// ```

// ---

//  6. Extension methods

// Extension methods let you add methods to existing libraries/classes. If the method is a single expression, use arrow syntax:

// ```dart
// extension StringExtensions on String {
//   // Extension method arrow syntax
//   String reverse() => split('').reversed.join();
// }

// void main() {
//   print('dart'.reverse()); // 'trad'
// }
// ```

// ---

//  7. Operators

// When you overload an operator (e.g. `operator +`), you can use arrow syntax if the body is a single expression:

// ```dart
// class Vector {
//   final double x, y;
//   Vector(this.x, this.y);

//   // Operator method using arrow syntax
//   Vector operator +(Vector other) => Vector(x + other.x, y + other.y);

//   @override
//   String toString() => 'Vector($x, $y)';
// }

// void main() {
//   final v1 = Vector(2, 3);
//   final v2 = Vector(4, 1);
//   print(v1 + v2); // Vector(6.0, 4.0)
// }
// ```

// ---

//  8. Factory constructors

// A `factory` constructor can return an instance of the class (or a subtype). If it’s a single expression, you can use arrow syntax:

// ```dart
// class Foo {
//   // Private unnamed constructor
//   Foo._();

//   // Factory constructor using arrow syntax
//   factory Foo() => Foo._();
// }
// ```

// Note that the body must be a single expression returning a suitable instance.

// ---

//  9. Async/Await functions

// You can also use arrow syntax in async functions, as long as the body is a single `=> expression`:

// ```dart
// Future<int> fetchNumber() async => 42;

// void main() async {
//   final result = await fetchNumber();
//   print(result); // 42
// }
// ```

// ---

//  Key Points About Arrow Functions

// 1. Single Expression: The body of an arrow function must be a single expression. If you need multiple statements, you must use a block body (`{ ... }`).
// 2. Return Value: Whatever follows `=>` is implicitly the return value of the function.
// 3. Same Parameter Rules: You can define parameters (positional, named, optional) exactly as you would in a normal Dart function.
// 4. Async Support: Arrow functions can be marked `async`, `async*`, or `sync*` just like any other Dart function.
// 5. Good for Readability: Arrow functions can make small “one-liner” methods (like getters, short calculations) more concise and readable.

// ---

// # Putting It All Together

// Here’s a single file showing various ways we can use arrow functions:

// ```dart
// // my_examples.dart

// // 1. Top-level arrow function
// String greet(String name) => 'Hello, $name!';

// // Class demonstrating multiple arrow function scenarios
// class Example {
//   // 2. Instance method
//   int addOne(int x) => x + 1;

//   // 3. Static method
//   static int multiply(int a, int b) => a * b;

//   // 8. Factory constructor
//   factory Example.withDefault() => Example._privateConstructor('default');

//   // Private named constructor
//   Example._privateConstructor(this.label);

//   final String label;
// }

// // 7. Operator
// class Point {
//   final int x, y;
//   Point(this.x, this.y);

//   Point operator +(Point other) => Point(x + other.x, y + other.y);
// }

// // 6. Extension method
// extension ListExtensions<T> on List<T> {
//   void printEach() => forEach(print);
// }

// // 9. Async arrow function
// Future<String> fetchData() async => 'Fetched Data';

// void main() async {
//   // Top-level arrow function
//   print(greet('Dart')); // Hello, Dart!

//   // Class instance + static arrow usage
//   final example = Example.withDefault();
//   print(example.addOne(10)); // 11
//   print(Example.multiply(3, 4)); // 12

//   // Operator arrow usage
//   final p1 = Point(1, 2);
//   final p2 = Point(3, 4);
//   final result = p1 + p2;
//   print('Point = (${result.x}, ${result.y})'); // Point = (4, 6)

//   // Extension arrow usage
//   final items = [1, 2, 3];
//   items.printEach(); // prints 1, then 2, then 3

//   // Async arrow usage
//   final data = await fetchData();
//   print(data); // Fetched Data

//   // 4. Local arrow function
//   int triple(int n) => n * 3;
//   print(triple(6)); // 18

//   // 5. Anonymous arrow function
//   final squares = items.map((x) => x * x).toList();
//   print(squares); // [1, 4, 9]
// }
// ```

// ---

//  Summary

// In Dart, any function (top-level, class method, local function, operator, extension method, factory constructor, or anonymous) can be turned into an arrow function as long as the function body is a single expression. This makes code concise and easy to read for one-liner functions. That’s really all there is to it—just replace:

// ```dart
// foo() {
//   return expression;
// }
// ```

// with

// ```dart
// foo() => expression;
// ```

// And you have an arrow function!
}
