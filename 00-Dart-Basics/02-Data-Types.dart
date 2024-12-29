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


////////////////////////////
////////////////////////////
////////////////////////////
///Dart provides a rich set of data types for various use cases. Below is a comprehensive list of Dart's data types, along with examples of how to implement them.

// 

//  1. Numbers
//    # a. `int`
//    - Represents integer values.
//    ```dart
//    int age = 24;
//    print(age);
//    ```

//    # b. `double`
//    - Represents floating-point values.
//    ```dart
//    double price = 19.99;
//    print(price);
//    ```

//    # c. `num`
//    - A parent type for both `int` and `double`.
//    ```dart
//    num count = 42; // Can hold int or double
//    count = 42.5;
//    print(count);
//    ```

// 

//  2. Strings
//    - Represents text data enclosed in single or double quotes.
//    ```dart
//    String name = 'Azad';
//    String greeting = "Hello, $name!";
//    print(greeting);
//    ```

//    # String Interpolation
//    ```dart
//    int age = 24;
//    String message = 'I am $age years old.';
//    print(message);
//    ```

// 

//  3. Booleans
//    - Represents `true` or `false`.
//    ```dart
//    bool isActive = true;
//    print(isActive);
//    ```

// 

//  4. Lists (Arrays)
//    - Represents an ordered collection of values.
//    # a. Fixed-Length List
//    ```dart
//    List<int> numbers = List.filled(5, 0); // Fixed size, default values
//    numbers[0] = 10;
//    print(numbers);
//    ```

//    # b. Growable List
//    ```dart
//    List<String> fruits = ['Apple', 'Banana'];
//    fruits.add('Mango');
//    print(fruits);
//    ```

// 

//  5. Sets
//    - Represents an unordered collection of unique items.
//    ```dart
//    Set<int> uniqueNumbers = {1, 2, 3, 3}; // Duplicate ignored
//    print(uniqueNumbers);
//    ```

// 

//  6. Maps
//    - Represents key-value pairs.
//    ```dart
//    Map<String, String> person = {
//      'name': 'Azad',
//      'city': 'Pune'
//    };
//    person['age'] = '24'; // Adding a new key-value pair
//    print(person);
//    ```

// 

//  7. Runes
//    - Represents Unicode characters.
//    ```dart
//    Runes heart = Runes('\u2764');
//    print(String.fromCharCodes(heart)); // Outputs: ❤
//    ```

// 

//  8. Symbols
//    - Used to represent identifiers in a program.
//    ```dart
//    Symbol s = #mySymbol;
//    print(s);
//    ```

// 

//  9. Dynamic
//    - Can hold any type of value, with type determined at runtime.
//    ```dart
//    dynamic value = 'Hello';
//    value = 42;
//    print(value);
//    ```

// 

//  10. Void
//    - Used for functions that do not return a value.
//    ```dart
//    void greet() {
//      print('Hello, World!');
//    }
//    greet();
//    ```

// 

//  11. Null Safety
//    - In Dart 2.12+, variables cannot be null unless explicitly declared nullable with `?`.
//    # Non-Nullable
//    ```dart
//    int number = 10; // Cannot be null
//    ```

//    # Nullable
//    ```dart
//    int? age = null; // Can be null
//    print(age);
//    ```

// 

//  12. Future and Async
//    - Represents asynchronous computations.
//    ```dart
//    Future<String> fetchData() async {
//      return 'Data loaded';
//    }
//    fetchData().then((value) => print(value));
//    ```

// 

//  13. Custom Types
//    # Classes and Objects
//    ```dart
//    class Person {
//      String name;
//      int age;
     
//      Person(this.name, this.age);
//    }

//    Person p = Person('Azad', 24);
//    print(p.name);
//    ```

// 

//  Summary of Data Types

// | Type      | Description                   | Example               |
// |----------------|-----------------------------------|---------------------------|
// | `int`          | Integer values                   | `int age = 24;`           |
// | `double`       | Floating-point values            | `double price = 19.99;`   |
// | `num`          | Parent type of `int` and `double`| `num count = 42;`         |
// | `String`       | Text data                        | `String name = 'Azad';`   |
// | `bool`         | Boolean values (`true`, `false`) | `bool isActive = true;`   |
// | `List`         | Ordered collection               | `List<String> fruits;`    |
// | `Set`          | Unordered unique items           | `Set<int> numbers;`       |
// | `Map`          | Key-value pairs                 | `Map<String, String>`     |
// | `Runes`        | Unicode characters               | `Runes heart = Runes();`  |
// | `Symbol`       | Program identifiers              | `Symbol s = #name;`       |
// | `dynamic`      | Runtime type                     | `dynamic value = 10;`     |
// | `void`         | No return function               | `void greet() {}`         |
// | `Future`       | Asynchronous computations        | `Future<String>`          |

// Dart's strong typing with flexibility like `dynamic`, `final`, and `const` makes it a versatile language for both small and large-scale applications.