///////////////////////////////////////////////
// Main entry point of the Dart application //
///////////////////////////////////////////////
void main() {
  // Print a heading just to keep track in console
  print(">>> OOPs (Object Oriented Programming) in Dart <<<");

  // Declare an integer variable 'a' and assign it the value 5
  int a = 5;
  // Print the runtime type of variable 'a'
  print(a.runtimeType);

  // Declare a string variable 's' and assign it "azad"
  String s = "azad";
  // Print the runtime type of variable 's'
  print(s.runtimeType);

  // Reassign different values to 'a' to demonstrate variable reassignment
  a = 6;
  a = 8;
  a = 10;

  // Print "Azad"
  print("Azad");
  // Print "Aj"
  print("Aj");

  ///////////////////////////////////////////
  // Class Car (basic empty class example) //
  ///////////////////////////////////////////
  // In Dart, we can define classes above main(),
  // but for demonstration, we'll show usage below
  // after the class is defined.

  // Create an object 'objA' of type 'CarEmpty'
  CarEmpty objA = CarEmpty();
  // Print the runtime type of 'objA'
  print(objA.runtimeType);

  ///////////////////////////////////////////
  // Class Car with one method (accelerate) //
  ///////////////////////////////////////////
  // Create an object 'carA' of type 'CarOneMethod'
  CarOneMethod carA = CarOneMethod();
  // Call the accelerate() method on 'carA'
  carA.accelerate();

  /////////////////////////////////////////
  // Class Car with two methods          //
  // accelerate() and brake()            //
  /////////////////////////////////////////
  // Create an object 'carB' of type 'CarTwoMethods'
  CarTwoMethods carB = CarTwoMethods();
  // Call the brake() method on 'carB'
  carB.brake();

  //////////////////////////////////////////
  // Class Bank with deposit() and withdraw()
  //////////////////////////////////////////
  // Create an object 'AzadBank' of type 'Bank'
  Bank AzadBank = Bank();
  // Call the deposit() method on 'AzadBank'
  AzadBank.deposit(1000);
  // Call the withdraw() method on 'AzadBank'
  AzadBank.withdraw(500);



  //////////////////////////////////////////
  // Class ListOps (without constructor)  //
  // Demonstrating extracting even/odd    //
  //////////////////////////////////////////
  // Create an object 'ops1' of type 'ListOpsNoConstructor'
  ListOpsNoConstructor ops1 = ListOpsNoConstructor();
  // Access the property 'l' in 'ops1'
  print(ops1.l);
  // Call extractEven() on ops1 and print the result
  print(ops1.extractEven(ops1.l));
  // Create another object 'ops2'
  ListOpsNoConstructor ops2 = ListOpsNoConstructor();
  // Call extractEven() on ops2 and print the result
  print(ops2.extractEven(ops2.l));

  /////////////////////////////////////////
  // Class ListOps with constructor      //
  /////////////////////////////////////////
  // Create an object 'obj1' of type 'ListOpsWithConstructor' and pass a list
  ListOpsWithConstructor obj1 = ListOpsWithConstructor([1, 2, 3, 4, 5]);
  // Print the object's internal list
  print(obj1.l);
  // Create another object 'obj2' with a different list
  ListOpsWithConstructor obj2 = ListOpsWithConstructor([1, 8, 3, 4, 10]);
  // Print the result of extractEven() on obj2
  print(obj2.extractEven());

  //////////////////////////////////////////////
  // Class Book with parameterized constructor
  //////////////////////////////////////////////
  // Create a 'student1' Book object
  Book student1 = Book("ML", "MURPHY", "Linear Regression");
  // Call the method to print name and author
  student1.extractDetailsNameAuthor();

  // Create a 'student2' Book object
  Book student2 = Book("DL", "abc", "CNN");
  // Call the method to print name and title
  student2.extractDetailsNameTitle();
  // Print the 'nameOfBook' property of 'student2'
  print(student2.nameOfBook);

  ///////////////////////////////////////////
  // Class BookWithDefault constructor     //
  ///////////////////////////////////////////
  // Create two objects to show default values
  BookWithDefault student3 = BookWithDefault();
  // Print name and author using method
  student3.extractDetailsNameAuthor();
  BookWithDefault student4 = BookWithDefault();
  // Print name and author again for student4
  student4.extractDetailsNameAuthor();

  /////////////////////////////////////////////
  // Book again with constructor (final demo)
  /////////////////////////////////////////////
  Book student5 = Book("ML", "MURPHY", "Linear Regression");
  // Print name and author
  student5.extractDetailsNameAuthor();
}

////////////////////////////////////
// Empty Car class (similar to "pass" in Python)
////////////////////////////////////
class CarEmpty {
  // No properties or methods
  // This is an empty class, similar to using 'pass' in Python
}

////////////////////////////////////
// Car class with one method
////////////////////////////////////
class CarOneMethod {
  // Define a method accelerate()
  void accelerate() {
    // Print statement indicating the car is accelerating
    print("Car is accelerating");
  }
}

////////////////////////////////////
// Car class with two methods
////////////////////////////////////
class CarTwoMethods {
  // Define a method accelerate()
  void accelerate() {
    // Print statement indicating the car is accelerating
    print("Car is accelerating");
  }

  // Define a method brake()
  void brake() {
    // Print statement indicating the car is stopping
    print("Car is stopping");
  }
}

////////////////////////////////////
// Bank class with deposit/withdraw
////////////////////////////////////
class Bank {
  // We store an amount as a property for demonstration
  double balance = 1000;

  // Define deposit() method
  void deposit(double amount) {
    // Print a message
    print("I am trying to deposit \$${amount}");
    // Update the balance
    balance += amount;
    // Print the updated balance
    print("New balance: \$${balance}");
  }

  // Define withdraw() method
  void withdraw(double amountWithdraw) {
    // Print a message
    print("I am trying to withdraw \$${amountWithdraw}");
    // Decrement the balance
    balance -= amountWithdraw;
    // Print the updated balance
    print("New balance: \$${balance}");
  }
}

/////////////////////////////////////////////////////////
// ListOpsNoConstructor class without explicit constructor
/////////////////////////////////////////////////////////
class ListOpsNoConstructor {
  // Define a default list l
  List<int> l = [1, 2, 3, 4, 5];

  // Define a method to extract even numbers
  List<int> extractEven(List<int> inputList) {
    // Prepare an empty list for even numbers
    List<int> l1 = [];
    // Loop over each item in the list
    for (int i in inputList) {
      // Check if 'i' is even
      if (i % 2 == 0) {
        // If even, add it to l1
        l1.add(i);
      }
    }
    // Return the list of even numbers
    return l1;
  }

  // Define a method to extract odd numbers
  List<int> extractOdd(List<int> inputList) {
    // Prepare an empty list for odd numbers
    List<int> l1 = [];
    // Loop over each item
    for (int i in inputList) {
      // Check if 'i' is odd
      if (i % 2 != 0) {
        // If odd, add it to l1
        l1.add(i);
      }
    }
    // Return the list of odd numbers
    return l1;
  }
}

////////////////////////////////////////////////////////
// ListOpsWithConstructor class with parameterized constructor
////////////////////////////////////////////////////////
class ListOpsWithConstructor {
  // A property that holds a list of integers
  List<int> l;

  // Parameterized constructor to initialize 'l'
  ListOpsWithConstructor(this.l);

  // Method to extract even numbers from 'l'
  List<int> extractEven() {
    // Create a new list for even numbers
    List<int> l1 = [];
    // Loop through the list 'l'
    for (int i in l) {
      // Check if the number is even
      if (i % 2 == 0) {
        // Add it to our result list if it's even
        l1.add(i);
      }
    }
    // Return the list of even numbers
    return l1;
  }

  // Method to extract odd numbers from 'l'
  List<int> extractOdd() {
    // Create a new list for odd numbers
    List<int> l1 = [];
    // Loop through the list 'l'
    for (int i in l) {
      // Check if the number is odd
      if (i % 2 != 0) {
        // Add it to our result list if it's odd
        l1.add(i);
      }
    }
    // Return the list of odd numbers
    return l1;
  }
}

////////////////////////////////////////////////////
// Book class with a constructor that sets
// name_of_book, book_author, and title_name
////////////////////////////////////////////////////
class Book {
  // Define properties
  String nameOfBook;
  String bookAuthor;
  String titleName;

  // Parameterized constructor
  Book(this.nameOfBook, this.bookAuthor, this.titleName);

  // Method to print name and title
  void extractDetailsNameTitle() {
    // Print the nameOfBook and the titleName
    print("$nameOfBook $titleName");
  }

  // Method to print name and author
  void extractDetailsNameAuthor() {
    // Print the nameOfBook and the bookAuthor
    print("$nameOfBook $bookAuthor");
  }
}

////////////////////////////////////////////////////
// BookWithDefault constructor that sets default
// values for name_of_book, book_author, title_name
////////////////////////////////////////////////////
class BookWithDefault {
  // Define properties
  String nameOfBook;
  String bookAuthor;
  String titleName;

  // Default (non-parameterized) constructor
  BookWithDefault()
      : nameOfBook = "DSA",
        bookAuthor = "Cormen",
        titleName = "Stacks";

  // Method to print name and title
  void extractDetailsNameTitle() {
    // Print the nameOfBook and the titleName
    print("$nameOfBook $titleName");
  }

  // Method to print name and author
  void extractDetailsNameAuthor() {
    // Print the nameOfBook and the bookAuthor
    print("$nameOfBook $bookAuthor");
  }
}
