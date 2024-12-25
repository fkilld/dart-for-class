// // void main() {
// //   // Declaring a Set of unique elements
// //   // A Set is a collection where each item is unique; duplicate values are not allowed
// //   var elements = {
// //     'O',
// //     'K',
// //     'Ni',
// //     'Rd'
// //   }; // Initializing the Set with 4 unique elements

// //   // Adding a single item to the Set
// //   // The .add() method adds one element to the Set
// //   elements.add('F'); // Adding 'F' to the Set
// //   print(elements); // Output: {O, K, Ni, Rd, F} (now includes 'F')

// //   // Adding multiple items to the Set
// //   // The .addAll() method adds all elements from a List or another Set
// //   elements.addAll(['H', 'C']); // Adding 'H' and 'C' to the Set
// //   print(elements); // Output: {O, K, Ni, Rd, F, H, C} (added both 'H' and 'C')

// //   // Ensuring uniqueness of elements
// //   // If you try to add an element that already exists in the Set, it will not be added
// //   elements.add('C'); // Attempting to add 'C' again
// //   print(
// //       elements); // Output: {O, K, Ni, Rd, F, H, C} (unchanged since 'C' is already in the Set)
// // }


// ////////////////////////////////////////////////////
// ////////////////////////////////////////////////////
// Below is a detailed guide on working with Set in Dart, including creation, reading, updating, deleting, set operations, and sorting. A Set in Dart is an unordered collection of unique elements. By default, Dart uses a `LinkedHashSet`, which maintains insertion order (unlike a purely unordered set), but each element is still guaranteed to be unique.



//  1. Create a Set

// # 1.1. Using a Set literal
// dart
// void main() {
//   // Create an empty set of integers
//   Set<int> numbers = {};

//   // Create a set with initial values
//   Set<String> fruits = {'apple', 'banana', 'mango'};
  
//   print(numbers); // {}
//   print(fruits);  // {apple, banana, mango}
// }


// # 1.2. Using Set constructor
// dart
// void main() {
//   // Create an empty set using the Set constructor
//   var numbers = <int>{};
//   // or
//   var fruits = Set<String>.from(['apple', 'banana']);

//   print(numbers); // {}
//   print(fruits);  // {apple, banana}
// }




//  2. Read from a Set

// Unlike lists, sets do not have a numeric index, so you cannot access elements by `[index]`. Instead, you can:

// # 2.1. Check size (length)
// dart
// void main() {
//   var fruits = {'apple', 'banana', 'mango'};
//   print(fruits.length); // 3
// }


// # 2.2. Iterate through a set

// - For-in loop
// dart
// void main() {
//   var fruits = {'apple', 'banana', 'mango'};
  
//   for (var fruit in fruits) {
//     print(fruit);
//   }
// }


// - `forEach` method
// dart
// void main() {
//   var fruits = {'apple', 'banana', 'mango'};
  
//   fruits.forEach((fruit) {
//     print(fruit);
//   });
// }


// # 2.3. Check if a set contains an element
// dart
// void main() {
//   var fruits = {'apple', 'banana', 'mango'};
  
//   print(fruits.contains('banana')); // true
//   print(fruits.contains('orange')); // false
// }




//  3. Update (Add) to a Set

// # 3.1. Add elements

// - `add(value)` — adds a single element.
// dart
// void main() {
//   var fruits = {'apple', 'banana'};
  
//   fruits.add('mango');
//   fruits.add('banana'); // 'banana' already exists, so this has no effect
  
//   print(fruits); // {apple, banana, mango}
// }


// - `addAll(iterable)` — adds multiple elements (duplicates will be ignored).
// dart
// void main() {
//   var fruits = {'apple', 'banana'};
  
//   fruits.addAll(['banana', 'orange', 'grapes']);
//   print(fruits); // {apple, banana, orange, grapes}
// }


// # 3.2. Transforming a set

// You can’t directly update an element at a specific index, because a set doesn’t have indices. However, you can use methods like `map`, then convert back to a set if you want to transform all elements:

// dart
// void main() {
//   var numbers = {1, 2, 3};
  
//   // Multiply each element by 2
//   var doubled = numbers.map((n) => n * 2).toSet();
  
//   print(doubled); // {2, 4, 6}
// }




//  4. Delete from a Set

// # 4.1. Remove by value

// - `remove(value)` — removes the element if it exists.
// dart
// void main() {
//   var fruits = {'apple', 'banana', 'mango'};
  
//   fruits.remove('banana');
//   print(fruits); // {apple, mango}
  
//   // Removing something that doesn’t exist is a no-op
//   fruits.remove('orange');
//   print(fruits); // {apple, mango}
// }


// # 4.2. Clear all elements

// - `clear()` — removes all elements from the set.
// dart
// void main() {
//   var fruits = {'apple', 'banana', 'mango'};
  
//   fruits.clear();
//   print(fruits); // {}
// }




//  5. Set Operations

// One of the biggest advantages of a Set is performing set operations like union, intersection, and difference.

// dart
// void main() {
//   var setA = {1, 2, 3, 4};
//   var setB = {3, 4, 5, 6};

//   // Union: elements in either set
//   var unionSet = setA.union(setB);
//   print('Union: $unionSet'); // {1, 2, 3, 4, 5, 6}

//   // Intersection: elements common to both sets
//   var intersectionSet = setA.intersection(setB);
//   print('Intersection: $intersectionSet'); // {3, 4}

//   // Difference: elements in setA but not in setB
//   var differenceSet = setA.difference(setB);
//   print('Difference: $differenceSet'); // {1, 2}
// }




//  6. Sorting a Set

// A Set in Dart does not provide a direct `sort()` method because sets are not inherently ordered.  
// To sort, convert the set to a list, sort the list, then (optionally) convert back to a set if desired.

// dart
// void main() {
//   var numbers = {5, 2, 9, 1, 5}; // duplicates are ignored, so effectively {5, 2, 9, 1}
  
//   // Convert to list
//   var numbersList = numbers.toList();
  
//   // Sort the list
//   numbersList.sort(); // ascending order
//   print(numbersList); // [1, 2, 5, 9]

//   // If you need a set again (though note the set won't store the order):
//   var sortedSet = numbersList.toSet();
//   print(sortedSet); // {1, 2, 5, 9}
// }


// For a custom comparator, do the same but pass a comparator to `sort()`:
// dart
// void main() {
//   var fruits = {'apple', 'banana', 'mango'};

//   // Convert to list
//   var fruitsList = fruits.toList();
  
//   // Sort descending (reverse alphabetical)
//   fruitsList.sort((a, b) => b.compareTo(a));
//   print(fruitsList); // [mango, banana, apple]
// }




//  7. Other Helpful Set Methods

// 1. `contains(value)`  
//    Checks if the set contains `value`.
//    dart
//    void main() {
//      var fruits = {'apple', 'banana'};
//      print(fruits.contains('apple')); // true
//      print(fruits.contains('grapes')); // false
//    }
   

// 2. `length`  
//    Returns the number of elements in the set.
//    dart
//    void main() {
//      var fruits = {'apple', 'banana', 'mango'};
//      print(fruits.length); // 3
//    }
   

// 3. `isEmpty` / `isNotEmpty`  
//    Check if the set is empty or not.
//    dart
//    void main() {
//      var fruits = {'apple', 'banana'};
//      print(fruits.isEmpty);    // false
//      print(fruits.isNotEmpty); // true
//    }
   

// 4. `lookup(value)`  
//    Returns the element in the set that is equal to `value`, or `null` if not found.
//    dart
//    void main() {
//      var fruits = {'apple', 'banana', 'mango'};
//      var result = fruits.lookup('banana');
//      print(result); // banana

//      var notFound = fruits.lookup('orange');
//      print(notFound); // null
//    }
   

// 5. `map()` / `where()`  
//    - `map()` transforms each element to a new value.  
//    - `where()` filters the elements that match a condition.
//    dart
//    void main() {
//      var numbers = {1, 2, 3, 4, 5};
     
//      // Double each number
//      var doubled = numbers.map((num) => num * 2).toSet();
//      print(doubled); // {2, 4, 6, 8, 10}

//      // Get only even numbers
//      var evenNumbers = numbers.where((num) => num % 2 == 0).toSet();
//      print(evenNumbers); // {2, 4}
//    }
   

// 6. `any()` / `every()`  
//    - `any()` returns true if any element satisfies the condition.  
//    - `every()` returns true if all elements satisfy the condition.
//    dart
//    void main() {
//      var numbers = {1, 2, 3, 4, 5};
     
//      bool hasEven = numbers.any((num) => num % 2 == 0);
//      bool allPositive = numbers.every((num) => num > 0);
     
//      print(hasEven);     // true
//      print(allPositive); // true
//    }
   



//  8. Putting It All Together (Set Example)

// Below is a mini-example showing create, add (update), read, remove, set operations, and sorting.

// dart
// void main() {
//   // CREATE
//   Set<String> tasks = {'Task 1', 'Task 2', 'Task 3'};
//   print('Initial: $tasks'); // {Task 1, Task 2, Task 3}

//   // READ (by checking existence and iteration)
//   print('Contains Task 2: ${tasks.contains('Task 2')}'); // true
//   print('Number of Tasks: ${tasks.length}');             // 3
//   for (var task in tasks) {
//     print('Task: $task');
//   }

//   // UPDATE (Add new tasks)
//   tasks.add('Task 4');
//   tasks.addAll(['Task 5', 'Task 6']);
//   print('After Adding: $tasks');
//   // {Task 1, Task 2, Task 3, Task 4, Task 5, Task 6}

//   // DELETE
//   tasks.remove('Task 1');
//   print('After Removing: $tasks');
//   // {Task 2, Task 3, Task 4, Task 5, Task 6}

//   // SET OPERATIONS (make a new set to compare)
//   var moreTasks = {'Task 5', 'Task 7'};
//   print('Union: ${tasks.union(moreTasks)}');
//   // {Task 2, Task 3, Task 4, Task 5, Task 6, Task 7}

//   print('Intersection: ${tasks.intersection(moreTasks)}');
//   // {Task 5}

//   print('Difference: ${tasks.difference(moreTasks)}');
//   // {Task 2, Task 3, Task 4, Task 6}

//   // SORT (by converting to a list)
//   var tasksList = tasks.toList()..sort(); 
//   print('Sorted: $tasksList');
//   // [Task 2, Task 3, Task 4, Task 5, Task 6]
// }




//  Summary

// - Create a set using literals (`{}`) or the `Set` constructor.  
// - Read by checking membership (`contains`) or iterating (no index-based access).  
// - Update by adding elements (`add`, `addAll`). You cannot update an element in place because sets have no index.  
// - Delete elements using `remove` or `clear`.  
// - Set operations (`union`, `intersection`, `difference`) are powerful for combining or filtering sets.  
// - Sorting a set requires converting it to a list, sorting, then optionally converting back to a set.

// Working with sets is ideal when you need unique values and efficient membership checks (i.e., checking if an element is in the collection).