// Dart Tutorial: The "late" Keyword

// The "late" keyword in Dart is used to declare variables that are initialized
// later, but their initialization is guaranteed before they are accessed.

// Example 1: Using "late" with instance variables
class ExampleClass {
  late String lateVariable; // Declare a late variable

  void initializeVariable() {
    lateVariable = 'Initialized value'; // Initialize the late variable
  }

  void accessVariable() {
    print(lateVariable); // Access the late variable
  }
}

void main() {
  var example = ExampleClass();
  example.initializeVariable();
  example.accessVariable(); // Output: Initialized value
}

// In this example, we declare a late variable called "lateVariable" inside the
// ExampleClass. It is not initialized immediately, but its initialization is
// guaranteed before it is accessed. In the main function, we create an instance
// of ExampleClass and call the initializeVariable method to initialize the
// lateVariable. Finally, we call the accessVariable method to access and print
// the value of lateVariable, which is "Initialized value".

// Example 2: Using "late" with local variables
void exampleFunction() {
  late int lateVariable; // Declare a late variable

  void initializeVariable() {
    lateVariable = 42; // Initialize the late variable
  }

  void accessVariable() {
    print(lateVariable); // Access the late variable
  }

  initializeVariable();
  accessVariable(); // Output: 42
}

void main() {
  exampleFunction();
}

// In this example, we declare a late variable called "lateVariable" inside
// the exampleFunction. The lateVariable is not initialized immediately, but
// its initialization is guaranteed before it is accessed. The initializeVariable
// function initializes the lateVariable with the value 42. Finally, we call
// the accessVariable function to access and print the value of lateVariable,
// which is 42.

// Note: The late keyword can only be used with instance and local variables.
// It cannot be used with top-level variables, static variables, or fields
// marked as final or const.

// That's it! You've learned how to use the "late" keyword in Dart.



///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////

In Dart, the `late` keyword lets you defer a variable’s initialization until it’s actually used, while still promising the compiler that this variable will be non-null by the time you access it. There are several ways (or “patterns”) you can use the `late` keyword depending on whether you use `var`, `final`, an initializer, or not. 


---

 1. `late` with a Non-Final Variable (Using `var` or an Explicit Type)

# 1.1 `late var` with No Initializer

```dart
late var counter;

void main() {
  counter = 0;           // Must assign before first use
  counter++;
  print(counter);        // Prints: 1
}
```

- Here, you declare `counter` as `late var counter;`.  
- No initializer is provided, so you must assign a value before using it.  
- If you try to read `counter` before assigning it, you’ll get a runtime error (not a compile-time error).

# 1.2 `late var` with an Initializer

```dart
late var description = getDescription();

String getDescription() {
  print('getDescription() called');
  return 'Some description';
}

void main() {
  print('Before using description');
  print(description); 
  // Output:
  // Before using description
  // getDescription() called
  // Some description
}
```

- If you provide an initializer, it executes lazily when you first use the variable.  
- The first time `description` is accessed, `getDescription()` is called, and the value is stored and reused.

# 1.3 `late <explicit-type>` with No Initializer

```dart
late int count;

void main() {
  count = 5;
  print(count); // Prints: 5
}
```

- Works exactly like `late var` with no initializer, but you specify the type explicitly (`int` in this example).

# 1.4 `late <explicit-type>` with an Initializer

```dart
late int value = computeValue();

int computeValue() {
  print('computeValue() is called');
  return 42;
}

void main() {
  print('main started');
  print(value);
  // Output:
  // main started
  // computeValue() is called
  // 42
}
```

- Exactly like `late var` with an initializer, but with an explicit type.  
- Lazy initialization happens when you first use `value`.

---

 2. `late` with a `final` Variable

# 2.1 `late final` with No Initializer

```dart
late final String text;

void main() {
  // text = null; // NOT allowed, text must be non-null
  text = 'Hello Dart!';
  print(text); // Prints: Hello Dart!
}
```

- Declares a final variable, meaning you can assign it exactly once.  
- No initializer is provided, so you must manually assign it before first use.  
- If you never assign it, or you read it before assignment, you’ll get a runtime error.  
- Trying to assign it more than once will cause an error at compile-time.

# 2.2 `late final` with an Initializer

```dart
late final String greeting = createGreeting();

String createGreeting() {
  print('createGreeting() called');
  return 'Hello, World!';
}

void main() {
  print('Before accessing greeting');
  print(greeting);
  // Output:
  // Before accessing greeting
  // createGreeting() called
  // Hello, World!
}
```

- Here, `greeting` is a final variable that’s initialized lazily with the result of `createGreeting()`.  
- Because it’s final, after that first lazy initialization, its value cannot be changed.  
- If you never use `greeting`, `createGreeting()` is never called.  

---

 3. Key Differences and Notes

1. `late var` vs `late final`  
   - `late var`: You can reassign it multiple times after it’s been initialized (unless you explicitly mark it as `late final`).  
   - `late final`: You can assign the variable only once. After that, it’s immutable.

2. With or Without an Initializer  
   - Without initializer: You are responsible for assigning the variable at some point before using it. If you don’t, you’ll hit a runtime error on first use.  
   - With initializer: The variable is lazily initialized when first accessed. If never accessed, the initializer code is never run.

3. Runtime vs Compile-Time Errors  
   - If you never assign a `late` variable (that doesn’t have an initializer) before reading it, that’s a runtime error.  
   - If you try to reassign a `late final` variable, that’s a compile-time error.

4. Use Cases  
   - `late` + No Initializer: For dependency injection, or values you must compute/assign from outside logic (constructor parameters, for instance).  
   - `late` + Initializer: For lazy evaluation of expensive operations (only run if and when you need it).  
   - `late final`: When you know a variable will be assigned exactly once and must remain constant thereafter. Commonly used for non-nullable fields that you can’t initialize immediately in a constructor.

---

 4. Examples Summarized

Here’s a concise table of the patterns:

| Pattern                           | Syntax                                      | When to Use                                                                  |
|---------------------------------------|-------------------------------------------------|-----------------------------------------------------------------------------------|
| 1. `late var` with no initializer | `late var x;`<br>`x = someValue;`               | You plan to assign `x` later, can reassign multiple times.                        |
| 2. `late var` with initializer    | `late var x = computeX();`                      | Lazy initialization, can reassign `x` multiple times after first read if needed.  |
| 3. `late <type>` no initializer   | `late int x;`<br>`x = 5;`                       | Same as #1, but with explicit type.                                               |
| 4. `late <type>` with initializer | `late String s = getString();`                  | Same as #2, but with explicit type.                                               |
| 5. `late final` no initializer    | `late final String s;`<br>`s = "Hello";`         | Assign once before use, remains final afterward.                                  |
| 6. `late final` with initializer  | `late final int v = computeValue();`            | Lazily assigned once, then remains fixed.                                         |

---

 5. Putting It All Together

Below is a more comprehensive example that showcases multiple `late` usages together:

```dart
String createGreeting(String name) {
  print('createGreeting() called with $name');
  return 'Hello, $name!';
}

late var greetSomeone;              // no initializer, can be reassigned
late final greeting1;               // no initializer, final
late final String greeting2 = createGreeting('Dart'); 
late final String greeting3;        // final, no initializer
late int counter = computeCounter(); // explicit type, lazy initialization

int computeCounter() {
  print('computeCounter() called');
  return 10;
}

void main() {
  // greeting2 is not called yet, so createGreeting('Dart') hasn't run
  print('Starting main...');

  // 1) Assign greetSomeone
  greetSomeone = createGreeting('Alice');
  print(greetSomeone); // createGreeting() called with Alice
                       // Hello, Alice!

  // 2) Assign greeting1 only once
  greeting1 = createGreeting('Bob');
  print(greeting1);    // createGreeting() called with Bob
                       // Hello, Bob!

  // greeting1 = 'New'; // ERROR: Already assigned final variable

  // 3) Use greeting2
  print(greeting2);    // createGreeting() called with Dart
                       // Hello, Dart!
  // greeting2 is final; cannot be changed.

  // 4) Assign greeting3
  greeting3 = 'Just assigned once';
  print(greeting3);

  // 5) Use counter
  print(counter);      // computeCounter() called
                       // 10
  // Reassigning counter is allowed, because it's just 'late int', not final
  counter = 20;
  print(counter);      // 20

  // 6) If we tried to read a 'late' variable without assignment (like if greeting3 wasn't assigned),
  // we'd get a runtime error.
}
```

# What You’ll See in the Console

1. Before `greeting2` or `counter` is used, their initializer functions (`createGreeting('Dart')` and `computeCounter()`) are not called yet.  
2. The moment you do `print(greeting2)` or `print(counter)`, the corresponding functions run.  
3. `greetSomeone` and `greeting1` have no initializers, so you must assign them manually.  
4. `greeting1` and `greeting2` are `final`, so they cannot be reassigned once set.

---

 6. Summary

- The `late` keyword in Dart is powerful for lazy initialization and definite assignment.  
- You can use it with `var` or a specific type (`int`, `String`, etc.), and combine it with or without an initializer.  
- You can make it `final` to ensure it’s assigned exactly once.  
- If you omit the initializer, remember you must assign a value before using the variable, or you’ll get a runtime error.  
- If you provide an initializer, it’s executed on first use, and then the variable is guaranteed to be non-null afterward.

With these patterns, you have a flexible set of tools for controlling *when* and *how* your non-nullable variables are initialized in Dart!