//  switch-case in Dart, including syntax, behavior, and examples.



//  1. Overview

// A switch statement in Dart allows you to handle different possible values of a single variable (or expression) more cleanly than multiple if-else statements. You check a variable against various case labels, and each label can execute its own code block.

// Key points:

// 1. `switch` can be used with:
//    - `int`, `String`, and (from Dart 2.17+) `enum` types.
//    - Compile-time constants.
// 2. Each `case` block must end with a statement that stops execution from falling through (e.g., `break`, `return`, or `throw`).  
// 3. `default` is optional but acts like a final “catch-all” if none of the other `case` labels match.



//  2. Syntax

// dart
// switch (expression) {
//   case value1:
//     // code to execute if expression == value1
//     break; // needed to prevent fall-through

//   case value2:
//     // code to execute if expression == value2
//     break;

//   default:
//     // code to execute if expression doesn't match any case
//     // break is optional here if it's the last statement
// }


// - `expression` is usually a variable or a simple expression that results in a compile-time constant-compatible type (e.g., `int`, `String`, `enum`).
// - Each `case value:` must be unique within the same switch.



//  3. Basic Example with `String`

// dart
// void main() {
//   String command = 'START';

//   switch (command) {
//     case 'START':
//       print('The command is START.');
//       break;

//     case 'STOP':
//       print('The command is STOP.');
//       break;

//     case 'PAUSE':
//       print('The command is PAUSE.');
//       break;

//     default:
//       print('Unknown command.');
//   }
// }


// # Explanation
// - If `command` equals `'START'`, the `START` case is executed.
// - If it’s `'STOP'` or `'PAUSE'`, those cases are executed respectively.
// - If it’s anything else, the `default` case runs.



//  4. Basic Example with `int`

// dart
// void main() {
//   int dayNumber = 3;

//   switch (dayNumber) {
//     case 1:
//       print('Today is Monday');
//       break;
//     case 2:
//       print('Today is Tuesday');
//       break;
//     case 3:
//       print('Today is Wednesday');
//       break;
//     case 4:
//       print('Today is Thursday');
//       break;
//     case 5:
//       print('Today is Friday');
//       break;
//     default:
//       print('Weekend or invalid day number');
//   }
// }




//  5. Using `enum` in Switch

// Enums in Dart are a common use case for switch statements (Dart 2.17+ supports enhanced enums and can switch on them).

// dart
// enum DayOfWeek { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

// void main() {
//   var today = DayOfWeek.wednesday;

//   switch (today) {
//     case DayOfWeek.monday:
//       print('It’s Monday.');
//       break;
//     case DayOfWeek.tuesday:
//       print('It’s Tuesday.');
//       break;
//     case DayOfWeek.wednesday:
//       print('It’s Wednesday.');
//       break;
//     case DayOfWeek.thursday:
//       print('It’s Thursday.');
//       break;
//     case DayOfWeek.friday:
//       print('It’s Friday.');
//       break;
//     case DayOfWeek.saturday:
//     case DayOfWeek.sunday:
//       print('It’s the weekend!');
//       break;
//   }
// }


// # Grouping Cases

// Notice that we used two case labels (`saturday` and `sunday`) leading to the same block of code. This is helpful when multiple cases require the same behavior.



//  6. “Fall-Through” Behavior

// In many languages (like C, JavaScript), not using a `break` will cause fall-through into the next case. In Dart, fall-through is not allowed by default. Each case block must end with a terminating statement (`break`, `return`, `throw`, or `continue` to a labeled statement). Otherwise, you’ll get a compile error.

// Example of grouping with a single block:
// dart
// void main() {
//   String level = 'high';

//   switch (level) {
//     case 'low':
//     case 'medium':
//       print('Level is low or medium');
//       break;
//     case 'high':
//       print('Level is high');
//       break;
//     default:
//       print('Unknown level');
//   }
// }

// Here, `'low'` and `'medium'` share the same code block.



//  7. Using a `label` and `continue` (Advanced)

// In Dart, you can have labeled statements and use `continue label;` to jump there. This is sometimes used in loops with switch statements, but it’s less common.  
// A simplistic example might look like this:

// dart
// void main() {
//   outerLoop: for (int i = 0; i < 3; i++) {
//     switch (i) {
//       case 1:
//         print('Skipping when i = 1');
//         continue outerLoop; // Jump to the next iteration of the outerLoop
//       default:
//         print('i = $i');
//     }
//   }
// }


// Output:

// i = 0
// Skipping when i = 1
// i = 2


// While this is valid, most use-cases don’t need such complexity, so it’s seldom used outside of very specific scenarios.



//  8. Comparison to If-Else

// - Switch is often more readable than a series of `if-else if-else if-else` statements, especially when matching multiple discrete values.
// - If-else can be more flexible for complex conditions (e.g., relational checks like `<`, `>=`, etc. are easier with if-else).
// - For a small set of conditions or complex boolean expressions, `if-else` might be simpler. For checking an expression against multiple discrete constants, `switch` is clearer.



//  9. Putting It All Together

// # Example: Simple CLI Menu

// dart
// import 'dart:io';

// void main() {
//   stdout.write('Enter a command (start, stop, pause, exit): ');
//   String? input = stdin.readLineSync();

//   switch (input) {
//     case 'start':
//       print('You chose to START.');
//       break;

//     case 'stop':
//       print('You chose to STOP.');
//       break;

//     case 'pause':
//       print('You chose to PAUSE.');
//       break;

//     case 'exit':
//       print('Exiting program...');
//       break;

//     default:
//       print('Unknown command.');
//   }
// }


// - This code reads a line from standard input.
// - `switch (input)` compares it against multiple string cases.
// - If none match, it prints `'Unknown command.'`.



//  Summary

// 1. `switch (expression)` checks the expression against different `case` labels.  
// 2. Each case block must end with a terminating statement (`break`, `return`, or `throw`)—no implicit fall-through is allowed.  
// 3. `default` handles any values that do not match a case.  
// 4. Dart switch statements commonly handle String, int, and enum values.  
// 5. Switch statements improve readability and maintainability when comparing one variable against multiple discrete options.