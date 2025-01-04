void main() {
  // STANDARD BEHAVIOR

  var employees = {'bob': 10, 'mary': 20};
  print(employees['bob']);
  // NOT IN MAP!
  // but still reports 'null' rather than an error
  print(employees['charlie']);

  // NULL SAFETY:
  // Does not allow you to override a data type with null
//   int someNum = null;

  // What if you did want to have a data type be nullable?
  // You can use the ? operator

  // This is REDUNDANT! BAD PRACTICE:
  // https://dart-lang.github.io/linter/lints/avoid_init_to_null.html
  int? someNum = null;

  // INSTEAD DO THIS:
  int? someNum; // Since by using ? we imply its null
}

//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
Dart introduced sound null safety starting from Dart 2.12, which helps you avoid null errors at runtime by catching them at compile time. Below is an overview of how null safety works in Dart, followed by the various language features and examples showing how to handle null or non-null types.

---

 1. Non-nullable vs. Nullable Types

# Non-nullable Types
By default, Dart types are non-nullable. That means a variable of type `int`, `String`, `List`, etc., cannot hold a `null` value.

```dart
// Non-nullable variable
int myNumber = 10;

// Compile-time error if you try to assign null
myNumber = null; // ERROR: The value 'null' can't be assigned to a variable of type 'int'
```

# Nullable Types
To allow a variable to hold a null value, you explicitly add a `?` suffix to the type.

```dart
// Nullable variable
int? myNullableNumber;

// This is allowed because myNullableNumber can be null
myNullableNumber = null;
```

---

 2. The `late` Keyword

Sometimes, you want a non-nullable variable but can’t initialize it right away (for example, when you’re sure the variable will be assigned before it’s used). You can use the `late` keyword to tell Dart that this variable will be assigned a non-null value later.

```dart
late String description;

void main() {
  description = 'This is a description';
  print(description); // Prints: This is a description
}
```

- If you use a `late` variable without assigning a value, you’ll get a runtime error because you promised Dart you’d assign a value before use.

---

 3. Null-aware Operators

Dart provides a set of operators to handle nullable types safely.

# 3.1 The Null-aware Access Operator (`?.`)

Use `?.` instead of `.` on a nullable type to call a method or access a property only if the value is non-null. If the object is `null`, the expression evaluates to `null` instead of throwing an error.

```dart
String? maybeString = 'Hello';
print(maybeString?.length); // Prints: 5

maybeString = null;
print(maybeString?.length); // Prints: null (no runtime error)
```

# 3.2 The Null-aware Cascade Operator (`?..`)

Similar to `?.`, but for cascades:

```dart
class Person {
  String? name;
  int? age;

  void showInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  Person? person;

  // Without using ?.., this would throw an error if 'person' is null
  person
    ?..name = 'Alice'
    ?..age = 30
    ?..showInfo(); // No effect because person is null
}
```

# 3.3 The Null-aware Index Operator (`?[]`)

If you’re accessing an item from a nullable list or map, you can use `?[]`. For example:

```dart
List<int>? numbers = [1, 2, 3];
print(numbers?[1]); // Prints: 2

numbers = null;
print(numbers?[1]); // Prints: null (instead of error)
```

# 3.4 The Default Value Operator (`??`)

Use `??` to provide a default value if an expression evaluates to `null`.

```dart
int? input;
int output = input ?? 10; // If input is null, output = 10
print(output); // Prints: 10
```

# 3.5 The Null-aware Assignment Operator (`??=`)

Use `??=` to assign a value to a variable only if that variable is currently `null`.

```dart
int? value;
value ??= 5;
print(value); // Prints: 5

value ??= 10;
print(value); // Still prints: 5 (because value is no longer null)
```

---

 4. The Non-null Assertion Operator (`!`)

The bang operator (`!`) tells Dart that you are certain a variable is non-null, even if its type is nullable. If you’re wrong and the variable is actually null at runtime, your app will throw an error.

```dart
int? nullableNumber = 42;
int nonNullNumber = nullableNumber!; // You assert it's definitely not null

print(nonNullNumber); // Prints: 42

// If nullableNumber was null at runtime, you'd get a runtime error:
nullableNumber = null;
int bad = nullableNumber!; // RUNTIME ERROR
```

Use this operator sparingly; if you find yourself using `!` often, consider refactoring your code to handle null more gracefully.

---

 5. Flow Analysis

Dart’s compiler performs flow analysis to check when a nullable variable has been checked for null. For example, once Dart sees an `if (variable != null)`, it treats `variable` as non-nullable inside that if block.

```dart
String? name;

void greet() {
  if (name != null) {
    // name is promoted to non-nullable String within this block
    print('Hello, ${name.toUpperCase()}!');
  } else {
    print('Hello, guest!');
  }
}
```

If you try to use `name` as non-null outside of that `if` block without re-checking, you’ll get a compile-time error.

---

 6. Nullable Generics and Type Promotion

Null safety applies to generics too. For example, `List<String?>` is a list of nullable strings, whereas `List<String>?` is a nullable list of non-nullable strings. And `List<String?>?` is a nullable list of nullable strings.

```dart
// A non-nullable list of non-nullable strings
List<String> names = ['Alice', 'Bob', 'Charlie'];

// A nullable list of non-nullable strings
List<String>? maybeNames;

// A non-nullable list of nullable strings
List<String?> mixedNames = ['Alice', null, 'Charlie'];

// You can see how each type signals different constraints.
```

---

 7. Migration and Sound Null Safety

- If you have older (pre-null-safety) Dart code, you can migrate it to null safety using the Dart migration tool (`dart migrate`).  
- Sound null safety means the compiler can guarantee that no runtime null-dereference errors can happen in your code, if your entire code (including dependencies) is migrated.

---

 Summary of "Ways" to Handle Null in Dart

1. Nullable Types (`?`)  
   Indicate a variable can be `null`.

2. Non-nullable Types (no `?`)  
   Variables must never be `null`.

3. `late` Keyword  
   Declare a non-nullable variable to be initialized later.

4. Null-aware Access (`?.`)  
   Safe calls on a nullable object.

5. Null-aware Cascade (`?..`)  
   Cascaded method/property calls on a nullable object.

6. Null-aware Index (`?[]`)  
   Access elements of a nullable list/map safely.

7. Default Operator (`??`)  
   Fallback if an expression is `null`.

8. Null-aware Assignment (`??=`)  
   Assign a value only if the variable is `null`.

9. Non-null Assertion (`!`)  
   Assert a nullable variable is definitely not `null` (use carefully).

10. Flow Analysis  
    Dart automatically promotes types in conditions like `if (x != null)`.

11. Nullable Generics  
    Combine generics with null safety (e.g., `List<String?>`, `List<String>?`).

---

 Putting It All Together

Here’s a more comprehensive example that shows various aspects of Dart’s null safety:

```dart
void main() {
  // 1. Non-nullable vs. Nullable
  String nonNullableString = 'Hello';
  String? nullableString = 'World';

  // 2. Using late
  late int counter;
  // Some logic...
  counter = 1;
  print('Counter = $counter'); // 1

  // 3. Null-aware operators
  print(nullableString?.length); // 5 if not null, else null

  // 4. Default operator
  int? maybeInt;
  print(maybeInt ?? 100); // 100

  // 5. Null-aware assignment
  maybeInt ??= 10;
  print(maybeInt); // 10

  // 6. Non-null assertion
  print(nullableString!.toUpperCase()); // Forces it to be non-null

  // 7. Flow analysis
  if (nullableString != null) {
    // Inside this block, nullableString is non-nullable
    print(nullableString.toUpperCase());
  }

  // 8. Nullable generics
  List<String?> listOfNullableStrings = ['Alice', null, 'Bob'];
  for (var item in listOfNullableStrings) {
    // item might be null
    print(item ?? 'Unknown');
  }

  // 9. Show a runtime null assertion error if we were wrong
  nullableString = null;
  // print(nullableString!); // Uncommenting this would cause a runtime error
}
```

---

 Conclusion

Dart’s null safety system is sound, which means if your entire project (and its dependencies) are migrated to null-safe code, the compiler will guarantee no null-dereference errors at runtime. By using the nullable (`?`) and non-nullable types, along with helpful operators (`??`, `?.`, `!`, etc.), you can precisely express intent about which variables can be null and avoid those dreaded null pointer exceptions in production.