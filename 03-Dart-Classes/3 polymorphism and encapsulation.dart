///////////////////////////////////////////////
// MAIN function - entry point of Dart code //
///////////////////////////////////////////////
void main() {
  print("===== POLYMORPHISM EXAMPLES =====");

  //////////////////////////////////////////
  // 1. Basic Polymorphism with Dart Types
  //////////////////////////////////////////


  // We'll just show some simple dynamic usage:
  dynamic a = "Ajay";
  dynamic b = [1, 2, 3, 4, 6, 7];

  // Prints the length of a string
  print("Length of string: ${a.length}");
  // Prints the length of a list
  print("Length of list: ${b.length}");

  // Simple function that can handle different data types
  print("func(3, 4) = ${func(3, 4)}");
  print("func('azad', 'skills') = ${func('azad', 'skills')}");
  print("func([1,2,3], [4,5,6]) = ${func([1, 2, 3], [4, 5, 6])}");

  //////////////////////////////////////////////
  // 2. Polymorphism with classes (lec_info)
  //////////////////////////////////////////////
  // Create objects of TeacherLecture and StudentLecture
  TeacherLecture obj1 = TeacherLecture();
  StudentLecture obj2 = StudentLecture();

  // Put them in a list
  List<dynamic> classObj = [obj1, obj2];

  // Pass the list to parser() function
  parser(classObj);

  print("\n===== METHOD OVERLOADING EXAMPLE =====");
  // Dart doesn't have classic method overloading,
  // but we can simulate it with optional parameters.

  Student stud = Student();
  stud.student(); // No arguments
  stud.student("Ajay"); // One argument
  stud.student("Ajay", "DS"); // Two arguments

  print("\n===== METHOD OVERRIDING EXAMPLE =====");

  // Parent class: Animal
  // Child class: Cat overrides sound()
  Cat cat = Cat();
  cat.sound(); // Calls the overridden method in Cat

  print("\n===== ENCAPSULATION EXAMPLE =====");

  // Public fields are accessible directly
  StudentPublic spub = StudentPublic("Ramesh", "Masters");
  print(spub.name); // Public access
  print(spub.degree); // Public access
  spub.degree = "PhD"; // Reassigning directly
  print(spub.degree); // Check new value

  // Private fields and getters/setters
  StudentPrivate spriv = StudentPrivate("Ramesh", "Masters");
  print(spriv.name); // Public attribute
  // print(spriv._degree);    // This would be invalid outside library
  // because _degree is private
  spriv.show(); // Accessing private field inside the class

  // Another example: Car with encapsulation
  Car car = Car("1995", "Maruti", 80, "Brezza");
  // Trying to access a private field directly is not allowed in Dart
  // from outside its library:
  // print(car._speed);  // Invalid if in separate file.
  // Use getter & setter instead:
  print("Car speed using getSpeed(): ${car.getSpeed()}");
  car.setSpeed(-1000);
  print("Car speed after invalid negative set: ${car.getSpeed()}");
  car.setSpeed(100);
  print("Car speed after valid set: ${car.getSpeed()}");

  // Another example: Bank with deposit & withdraw
  Bank acc = Bank(1000);
  print("Initial bank balance: ${acc.getBalance()}");
  acc.deposit(10000);
  print("Bank balance after deposit: ${acc.getBalance()}");
  bool result = acc.withdraw(10500);
  print("Withdraw 10500 success? $result");
  print("Bank balance after withdrawal: ${acc.getBalance()}");
  bool result2 = acc.withdraw(1000);
  print("Withdraw 1000 success? $result2");
  print("Bank balance after second withdrawal: ${acc.getBalance()}");

  print("\n===== 'PROTECTED' IN DART (SIMULATED) =====");
  // Dart has no 'protected' keyword. Typically, we rely on
  // naming conventions or simply underscore fields for 'private'.
  // We'll show a simulated version with inheritance:

  StudentCollege sc = StudentCollege("Ajay");
  sc.show(); // Access parent's protected-like field using child's method

  // Accessing _collegeName from outside the class or library directly
  // is allowed only if in the same library.
  // print(sc._collegeName);  // If in the same file, it's accessible
  // (but considered library-private).
}

/// Demonstrates a function that can handle adding two ints, two strings,
/// or two lists. This is a form of polymorphism.
dynamic func(dynamic x, dynamic y) {
  // If both x and y are lists, combine them
  if (x is List && y is List) {
    return [...x, ...y]; // Spreads x and y into a new list
  }
  // Otherwise, rely on the + operator for strings/ints
  return x + y;
}

//////////////////////////////////
// TeacherLecture class
//////////////////////////////////
class TeacherLecture {
  // Method lec_info
  void lecInfo() {
    print("This is lec info with teacher perspective");
  }
}

//////////////////////////////////
// StudentLecture class
//////////////////////////////////
class StudentLecture {
  // Method lec_info
  void lecInfo() {
    print("This is lec info with student perspective");
  }
}

//////////////////////////////////
// parser function
//////////////////////////////////
void parser(List<dynamic> classObj) {
  // Loop through each item in the list
  for (var obj in classObj) {
    // Call lecInfo() polymorphically
    obj.lecInfo();
  }
}

//////////////////////////////////
// Method Overloading-like class
//////////////////////////////////
// In Dart, you can simulate method overloading by using
// optional parameters or named parameters in a single method.
class Student {
  // A single method with optional positional parameters
  void student([String name = "", String course = ""]) {
    print("Welcome to azad class $name $course");
  }
}

//////////////////////////////////
// Method Overriding
//////////////////////////////////
class Animal {
  // Base method
  void sound() {
    print("Animal sound");
  }
}

class Cat extends Animal {
  // Override the sound method
  @override
  void sound() {
    print("Cat meows");
  }
}

//////////////////////////////////
// Encapsulation
//////////////////////////////////

// 1. Public fields
class StudentPublic {
  // Public fields (no underscore)
  String name;
  String degree;

  // Constructor
  StudentPublic(this.name, this.degree);
}

// 2. Private field with underscore and a public field
class StudentPrivate {
  // Public
  String name;
  // Private
  String _degree;

  // Constructor
  StudentPrivate(this.name, String degree) : _degree = degree;

  // Method to show (access private field within the class)
  void show() {
    print("name: $name, degree: $_degree");
  }
}

//////////////////////////////////
// Car class with encapsulation
//////////////////////////////////
class Car {
  // Private fields
  String _year;
  String _make;
  int _speed;
  String _model;

  // Constructor that initializes all fields
  Car(String year, String make, int speed, String model)
      : _year = year,
        _make = make,
        _speed = speed < 0 ? 0 : speed, // Validate speed
        _model = model;

  // Setter for speed with validation
  void setSpeed(int speed) {
    if (speed < 0) {
      _speed = 0;
    } else {
      _speed = speed;
    }
  }

  // Getter for speed
  int getSpeed() {
    return _speed;
  }

  // (We could provide getters for year, make, model if needed)
}

//////////////////////////////////
// Bank class with encapsulation
//////////////////////////////////
class Bank {
  // Private field
  double _balance;

  // Constructor
  Bank(this._balance);

  // deposit() method
  void deposit(double amount) {
    _balance += amount;
  }

  // withdraw() method
  bool withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      return true;
    } else {
      return false;
    }
  }

  // Getter for balance
  double getBalance() {
    return _balance;
  }
}

///////////////////////////////////////////////////
// Demonstrating "protected"-like concept in Dart
///////////////////////////////////////////////////
// Dart does not have a 'protected' keyword.
// We'll simulate it by using an underscore
// (which is private at the library level).
class College {
  // We'll treat _collegeName as "protected"
  // but in Dart it's private to the library.
  String _collegeName = "azad";
}

// StudentCollege extends College
class StudentCollege extends College {
  String name;

  // Constructor
  StudentCollege(this.name);

  // show() method
  void show() {
    // Here we can access _collegeName because
    // it's within the same library file.
    print("name: $name, college: $_collegeName");
  }
}
