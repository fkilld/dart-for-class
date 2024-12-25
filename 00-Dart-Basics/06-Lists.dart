// void main() {
//   // Creating a list
//   var myList = ['A', 'B', 'C', 'D', 'E']; // A list of strings
//   // Accessing a specific item from the list using its index
//   print(myList[0]); // Output: A (first element in the list)

//   // Grabbing a subset of the list using the sublist method
//   print(myList.sublist(1,
//       3)); // Output: [B, C] (elements from index 1 to 2, end index is exclusive)

//   // Getting the length of the list
//   print(myList.length); // Output: 5 (total number of elements in the list)

//   // Concatenating two lists using the `+` operator
//   var listOne = ['A', 'B'];
//   var listTwo = ['X', 'Z'];
//   print(listOne +
//       listTwo); // Output: [A, B, X, Z] (elements of both lists combined)

//   // Using the spread operator (...) to include all elements of one list into another
//   print([
//     0,
//     1,
//     2,
//     ...listTwo
//   ]); // Output: [0, 1, 2, X, Z] (elements of listTwo spread into the new list)
// }
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
// Below are some common operations you might perform on Lists in Dart, including basic CRUD (Create, Read, Update, Delete) as well as sorting and other helpful list methods.



//  1. Create a List

//  1.1. Using a literal

// void main() {
//   // Create an empty list of integers
//   List<int> numbers = [];
  
//   // Create a list with initial values
//   List<String> fruits = ['apple', 'banana', 'mango'];
  
//   print(numbers); // []
//   print(fruits);  // [apple, banana, mango]
// }


//  1.2. Using List constructor

// void main() {
//   // Create a growable list (size can change)
//   var growableList = List<int>.empty(growable: true);
//   growableList.add(10);
//   growableList.add(20);
  
//   // Create a fixed-length list (size cannot change)
//   var fixedList = List<int>.filled(3, 0); // Creates [0, 0, 0]
  
//   print(growableList); // [10, 20]
//   print(fixedList);    // [0, 0, 0]
// }


//  2. Read from a List

//  2.1. Access by index

// void main() {
//   var fruits = ['apple', 'banana', 'mango'];
  
//   print(fruits[0]); // apple
//   print(fruits[1]); // banana
//   print(fruits[2]); // mango
// }


//  2.2. Check length of the list

// void main() {
//   var fruits = ['apple', 'banana', 'mango'];
//   print(fruits.length); // 3
// }


//  2.3. Iterate through the list

// void main() {
//   var fruits = ['apple', 'banana', 'mango'];

//   // For loop
//   for (int i = 0; i < fruits.length; i++) {
//     print('Index $i: ${fruits[i]}');
//   }

//   // For-in loop
//   for (var fruit in fruits) {
//     print(fruit);
//   }

//   // forEach method
//   fruits.forEach((fruit) {
//     print(fruit);
//   });
// }


//  3. Update a List

//  3.1. Update by index

// void main() {
//   var fruits = ['apple', 'banana', 'mango'];
//   fruits[1] = 'orange';  // Replace 'banana' with 'orange'
  
//   print(fruits); // [apple, orange, mango]
// }


//  3.2. Map to transform each element

// void main() {
//   var numbers = [1, 2, 3];
//   // Multiply each element by 2
//   var doubledNumbers = numbers.map((n) => n * 2).toList();
  
//   print(doubledNumbers); // [2, 4, 6]
// }


//  4. Delete from a List

//  4.1. Remove by index

// void main() {
//   var fruits = ['apple', 'banana', 'mango'];
  
//   fruits.removeAt(1); // Removes 'banana'
//   print(fruits); // [apple, mango]
// }


//  4.2. Remove by value

// void main() {
//   var fruits = ['apple', 'banana', 'mango', 'banana'];
  
//   fruits.remove('banana');  // Removes the first 'banana'
//   print(fruits); // [apple, mango, banana]
  
//   fruits.remove('banana');  // Removes the next 'banana'
//   print(fruits); // [apple, mango]
// }


//  4.3. Clear all elements

// void main() {
//   var fruits = ['apple', 'banana', 'mango'];
//   fruits.clear(); // Removes all elements
//   print(fruits);  // []
// }


//  5. Sorting a List

//  5.1. Sort using the default sort (ascending)

// void main() {
//   var numbers = [5, 2, 9, 1, 5];
//   numbers.sort(); // Sorts in ascending order (for numbers)
//   print(numbers); // [1, 2, 5, 5, 9]
// }


//  5.2. Sort using a custom comparator

// void main() {
//   var fruits = ['apple', 'banana', 'mango'];
  
//   // Sort descending by string (reverse alphabetical)
//   fruits.sort((a, b) => b.compareTo(a));
//   print(fruits); // [mango, banana, apple]
// }


//  6. Other Helpful List Methods

// 1. `add(element)` / `addAll(list)`  
//    - Add a single element or multiple elements at once.
   
//    void main() {
//      var fruits = <String>[];
//      fruits.add('apple');
//      fruits.addAll(['banana', 'mango']);
//      print(fruits); // [apple, banana, mango]
//    }
   

// 2. `insert(index, element)` / `insertAll(index, list)`  
//    - Insert elements at a specified index.
   
//    void main() {
//      var fruits = ['apple', 'banana'];
//      fruits.insert(1, 'mango');         // [apple, mango, banana]
//      fruits.insertAll(0, ['orange']);   // [orange, apple, mango, banana]
//      print(fruits);
//    }
   

// 3. `indexOf(element)`  
//    - Get the index of the first occurrence of an element.
   
//    void main() {
//      var fruits = ['apple', 'banana', 'mango'];
//      print(fruits.indexOf('banana')); // 1
//    }
   

// 4. `contains(element)`  
//    - Check if an element is in the list.
   
//    void main() {
//      var fruits = ['apple', 'banana', 'mango'];
//      print(fruits.contains('banana')); // true
//      print(fruits.contains('orange')); // false
//    }
   

// 5. `any(condition)` / `every(condition)`  
//    - Check whether any or all elements match a given condition.
   
//    void main() {
//      var numbers = [1, 2, 3, 4, 5];
     
//      bool hasEven = numbers.any((num) => num % 2 == 0);   // true
//      bool allPositive = numbers.every((num) => num > 0);  // true
     
//      print(hasEven);     // true
//      print(allPositive); // true
//    }
   

// 6. `where(condition)`  
//    - Filter the list by a certain condition.
   
//    void main() {
//      var numbers = [1, 2, 3, 4, 5];
     
//      // Get all even numbers
//      var evenNumbers = numbers.where((num) => num % 2 == 0).toList();
     
//      print(evenNumbers); // [2, 4]
//    }
   

// 7. `reduce()` / `fold()`  
//    - Combine all elements of a list into a single value using a function.
   
//    void main() {
//      var numbers = [1, 2, 3];
     
//      // reduce
//      int sum = numbers.reduce((a, b) => a + b);
//      print(sum); // 6
     
//      // fold (allows a starting initialValue)
//      int product = numbers.fold(1, (prev, elem) => prev * elem);
//      print(product); // 6
//    }
   

// 8. `sublist(startIndex, [endIndex])`  
//    - Create a new list from a range of indices in an existing list.
   
//    void main() {
//      var fruits = ['apple', 'banana', 'mango', 'orange', 'grapes'];
//      var sub = fruits.sublist(1, 3); // from index 1 up to (but not including) 3
//      print(sub); // [banana, mango]
//    }
   

// 9. `reversed`  
//    - Returns an iterable of the list in reverse order (not a new list, so often chained with `toList()`).
   
//    void main() {
//      var numbers = [1, 2, 3, 4, 5];
//      var reversedNumbers = numbers.reversed;
//      print(reversedNumbers);           // (5, 4, 3, 2, 1) — an Iterable
//      print(reversedNumbers.toList()); // [5, 4, 3, 2, 1]
//    }
   

//  Putting It All Together (CRUD + Sorting Example)


// void main() {
//   // CREATE
//   List<String> tasks = ['Task 1', 'Task 2', 'Task 3'];
//   print('Initial: $tasks'); // [Task 1, Task 2, Task 3]

//   // READ
//   print('First Task: ${tasks[0]}'); // Task 1
//   print('Number of Tasks: ${tasks.length}'); // 3

//   // UPDATE
//   tasks[1] = 'Task 2 (Updated)';
//   print('After Update: $tasks'); // [Task 1, Task 2 (Updated), Task 3]

//   // DELETE
//   tasks.removeAt(0);
//   print('After Deletion: $tasks'); // [Task 2 (Updated), Task 3]

//   // ADD MORE
//   tasks.addAll(['Task 4', 'Task 5', 'Task 6']);
//   print('All Tasks: $tasks'); 
//   // [Task 2 (Updated), Task 3, Task 4, Task 5, Task 6]

//   // SORT (in alphabetical order)
//   tasks.sort();
//   print('Sorted Tasks: $tasks');
//   // [Task 2 (Updated), Task 3, Task 4, Task 5, Task 6] 
//   // (Exact order depends on string comparison)
// }


// //  Summary

// // - Create a list using literals or constructors.  
// // - Read elements by index or by iterating.  
// // - Update elements via direct index assignment or by using methods like `map`.  
// // - Delete elements using `remove()`, `removeAt()`, or `clear()`.  
// // - Sort lists using `sort()` with optional custom comparators.  
// // - Additional methods such as `where()`, `any()`, `every()`, `reduce()`, `fold()`, and more provide powerful ways to manipulate and query lists.
