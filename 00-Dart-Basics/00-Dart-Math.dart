




// import 'dart:math';
  
// void main(){
// //   comments look like this
//   print(1+1);
//   print(2-2);
//   print(3*3);
//   print(4/2);
//   print(2/0);
//   print(0/2);
//   print(pow(2,4));
// /*  multi-line
//     comments
//     look
//     like this
// */
// }


import 'dart:math'; // Importing the math library for the pow function

void main() {
  // Single-line comments look like this

  // Adding two numbers
  print(1 + 1); // Output: 2

  // Subtracting two numbers
  print(2 - 2); // Output: 0

  // Multiplying two numbers
  print(3 * 3); // Output: 9

  // Dividing two numbers
  print(4 / 2); // Output: 2.0 (Division always gives a double)

  // Dividing by zero
  print(2 /
      0); // Output: Infinity (in Dart, dividing by zero results in Infinity)

  // Dividing zero by a number
  print(0 / 2); // Output: 0.0

  // Raising a number to a power
  print(pow(2, 4)); // Output: 16 (2 raised to the power of 4)

  /*
    Multi-line comments look like this
    and can span multiple lines.
    This is useful for commenting out larger sections of code or explanations.
  */
}


////////////////////////////////////////////////////

// ### **What is `void main() {}` in Dart?**

// 1. **Definition**  
//    In Dart, `void main() {}` is the **entry point** of a Dart program. It's the first function that gets called when the program starts running. 

// 2. **Purpose**  
//    - **`main` Function**: The Dart runtime looks for this function to begin execution. Without it, the program won’t run.
//    - **`void` Keyword**: It means the `main` function doesn’t return any value.

// 3. **Usage Example**:
//    ```dart
//    void main() {
//      print('Hello, Dart!');
//    }
//    ```
//    When you run this, the output will be:
//    ```
//    Hello, Dart!
//    ```

// ---

// ### **Are There Variations of `main`?**
// Yes, Dart allows some variations:

// 1. **With Arguments**  
//    The `main` function can accept arguments passed from the command line as a list of strings (`List<String>`):
//    ```dart
//    void main(List<String> args) {
//      print('Arguments: $args');
//    }
//    ```
//    If you run this program with `dart run program.dart hello world`, the output will be:
//    ```
//    Arguments: [hello, world]
//    ```

// 2. **Without `void`**  
//    Dart allows you to omit `void`, as it is inferred:
//    ```dart
//    main() {
//      print('Hello, Dart!');
//    }
//    ```

// ---

// ### **Other Entry Points?**
// In Dart, the `main` function is the **only entry point** for programs. However, you can define additional functions, but they are called indirectly from the `main` function. For example:
// ```dart
// void greet() {
//   print('Welcome!');
// }

// void main() {
//   greet(); // Calls the `greet` function
// }
// ```

// ---

// ### **Why Do We Use `main()`?**
// - It tells the Dart runtime where to start executing the program.
// - Every standalone Dart application needs a `main()` function.