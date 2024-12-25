// void main() {
//   // Given Map of employees with their associated values
//   var employees = {
//     // Key:    Value
//     'David': 10, // 'David' has a value of 10
//     'Claire': 5, // 'Claire' has a value of 5
//     'Calvin': 3 // 'Calvin' has a value of 3
//   };

//   // Removing the key 'Calvin' from the map
//   // The .remove() method removes the specified key and returns its value
//   var removedValue = employees.remove('Calvin');

//   // Printing the value associated with the removed key
//   print(removedValue);
//   // Output: 3 (value associated with 'Calvin')

//   // Printing the updated Map after removing 'Calvin'
//   print(employees);
//   // Output: {David: 10, Claire: 5} (Map now only contains the remaining entries)
// }



// ////////////////////////////////////////////////////
// ////////////////////////////////////////////////////
// ////////////////////////////////////////////////////
//  A Map is an unordered collection of key-value pairs. By default, Dart uses `LinkedHashMap`, which maintains insertion order by keys.



//  1. Create a Map

// # 1.1. Using a Map literal

// dart
// void main() {
//   // Create an empty map
//   Map<String, int> emptyMap = {};

//   // Create a map with initial key-value pairs
//   Map<String, String> fruits = {
//     'apple': 'red',
//     'banana': 'yellow',
//     'mango': 'orange',
//   };

//   print(emptyMap); // {}
//   print(fruits);   // {apple: red, banana: yellow, mango: orange}
// }


// # 1.2. Using Map constructor

// dart
// void main() {
//   // Using the default constructor
//   var users = Map<String, int>();
//   // or using <String, int>{} as a literal

//   // Initialize from existing key-value pairs
//   var fruitColors = Map<String, String>.from({
//     'apple': 'red',
//     'banana': 'yellow',
//   });

//   print(users);       // {}
//   print(fruitColors); // {apple: red, banana: yellow}
// }




//  2. Read from a Map

// # 2.1. Access by key

// dart
// void main() {
//   var fruits = {
//     'apple': 'red',
//     'banana': 'yellow',
//     'mango': 'orange',
//   };

//   print(fruits['apple']);  // red
//   print(fruits['banana']); // yellow
// }


// > If a key doesn’t exist, accessing it returns `null` by default.

// # 2.2. Check if a map contains a key or a value

// dart
// void main() {
//   var fruits = {
//     'apple': 'red',
//     'banana': 'yellow',
//     'mango': 'orange',
//   };

//   print(fruits.containsKey('apple'));  // true
//   print(fruits.containsValue('green')); // false
// }


// # 2.3. Get all keys or all values

// dart
// void main() {
//   var fruits = {
//     'apple': 'red',
//     'banana': 'yellow',
//     'mango': 'orange',
//   };

//   print(fruits.keys);   // (apple, banana, mango)
//   print(fruits.values); // (red, yellow, orange)
// }


// # 2.4. Iterate through the map

// - forEach method:
// dart
// void main() {
//   var fruits = {
//     'apple': 'red',
//     'banana': 'yellow',
//     'mango': 'orange',
//   };

//   fruits.forEach((key, value) {
//     print('$key: $value');
//   });
// }


// - for-in loop with `.entries`:
// dart
// void main() {
//   var fruits = {
//     'apple': 'red',
//     'banana': 'yellow',
//     'mango': 'orange',
//   };

//   for (var entry in fruits.entries) {
//     print('${entry.key} is ${entry.value}');
//   }
// }




//  3. Update a Map

// # 3.1. Add or update by key

// dart
// void main() {
//   var fruits = {
//     'apple': 'red',
//     'banana': 'yellow',
//   };

//   // Update existing key
//   fruits['banana'] = 'light yellow';

//   // Add new key
//   fruits['mango'] = 'orange';

//   print(fruits); 
//   // {apple: red, banana: light yellow, mango: orange}
// }


// # 3.2. Add multiple entries using `addAll`

// dart
// void main() {
//   var fruits = {'apple': 'red'};
  
//   fruits.addAll({
//     'banana': 'yellow',
//     'mango': 'orange',
//   });

//   print(fruits);
//   // {apple: red, banana: yellow, mango: orange}
// }




//  4. Delete from a Map

// # 4.1. Remove by key

// dart
// void main() {
//   var fruits = {
//     'apple': 'red',
//     'banana': 'yellow',
//     'mango': 'orange',
//   };

//   // remove(key) returns the value that was associated with the key, or null if not found
//   var removedValue = fruits.remove('banana');
//   print(removedValue); // yellow
//   print(fruits);       // {apple: red, mango: orange}
// }


// # 4.2. Clear all entries

// dart
// void main() {
//   var fruits = {
//     'apple': 'red',
//     'banana': 'yellow',
//     'mango': 'orange',
//   };

//   fruits.clear();
//   print(fruits); // {}
// }




//  5. Sorting a Map

// Since Map in Dart doesn’t have a built-in sort method (similar to `List.sort()`), you typically:

// 1. Convert the map’s entries to a list.
// 2. Sort that list by your desired criteria (e.g., by key or by value).
// 3. Optionally build a new map from the sorted entries.

// # 5.1. Sort by keys

// dart
// void main() {
//   var fruits = {
//     'mango': 'orange',
//     'banana': 'yellow',
//     'apple': 'red',
//   };

//   // Convert entries to a list
//   var entriesList = fruits.entries.toList();

//   // Sort by key
//   entriesList.sort((a, b) => a.key.compareTo(b.key));

//   // Build a new map from the sorted entries
//   var sortedByKey = { for (var e in entriesList) e.key : e.value };
  
//   print(sortedByKey);
//   // {apple: red, banana: yellow, mango: orange}
// }


// # 5.2. Sort by values

// dart
// void main() {
//   var fruits = {
//     'mango': 'orange',
//     'banana': 'yellow',
//     'apple': 'red',
//   };

//   var entriesList = fruits.entries.toList();

//   // Sort by value
//   entriesList.sort((a, b) => a.value.compareTo(b.value));

//   var sortedByValue = { for (var e in entriesList) e.key : e.value };
  
//   print(sortedByValue);
//   // {apple: red, mango: orange, banana: yellow}
// }


// > Note that once you’ve built a new `Map`, its iteration order will reflect the insertion order of the sorted list. However, a `Map` in Dart is not automatically kept sorted like a `TreeMap` in some other languages—it’s only sorted upon creation in this manner.



//  6. Other Helpful Map Methods

// 1. `map()` (transformation):  
//    Returns a new map where each key-value pair is transformed by a function you provide.
//    dart
//    void main() {
//      var fruits = {
//        'apple': 'red',
//        'banana': 'yellow',
//        'mango': 'orange',
//      };

//      var upperCased = fruits.map((key, value) {
//        return MapEntry(key.toUpperCase(), value.toUpperCase());
//      });

//      print(upperCased);
//      // {APPLE: RED, BANANA: YELLOW, MANGO: ORANGE}
//    }
   

// 2. `keys` and `values`:  
//    - `keys` returns an iterable of all keys.  
//    - `values` returns an iterable of all values.

// 3. `forEach((key, value) { ... })`:  
//    - Iterate over each key-value pair in the map.

// 4. `putIfAbsent(key, ifAbsentFunction)`:  
//    - Adds a key-value pair if the key does not already exist. If it does exist, it returns the existing value.
//    dart
//    void main() {
//      var fruits = {'apple': 'red'};
     
//      fruits.putIfAbsent('banana', () => 'yellow');
//      fruits.putIfAbsent('apple', () => 'green'); // 'apple' already exists, so it's not updated

//      print(fruits);
//      // {apple: red, banana: yellow}
//    }
   

// 5. `removeWhere((key, value) => condition)`:  
//    - Removes all entries that satisfy the given condition.
//    dart
//    void main() {
//      var fruits = {
//        'apple': 'red',
//        'banana': 'yellow',
//        'grapes': 'green',
//        'mango': 'orange'
//      };

//      // Remove fruits whose value is 'green'
//      fruits.removeWhere((key, value) => value == 'green');
     
//      print(fruits); // {apple: red, banana: yellow, mango: orange}
//    }
   

// 6. `isEmpty` / `isNotEmpty`:  
//    - Check if the map has zero or some entries.
//    dart
//    void main() {
//      var fruits = {'apple': 'red'};
     
//      print(fruits.isEmpty);    // false
//      print(fruits.isNotEmpty); // true
//    }
   

// 7. `length`:  
//    - Number of key-value pairs in the map.



//  7. Putting It All Together (Map Example)

// Below is a mini-example demonstrating creation, reading, updating, deleting, and sorting a `Map`.

// dart
// void main() {
//   // CREATE
//   Map<String, String> tasks = {
//     'task1': 'Pending',
//     'task2': 'In Progress',
//     'task3': 'Completed',
//   };
//   print('Initial: $tasks');
//   // {task1: Pending, task2: In Progress, task3: Completed}

//   // READ
//   print('Status of task2: ${tasks['task2']}');
//   // Status of task2: In Progress

//   // Check if task1 exists
//   print('Contains task1? ${tasks.containsKey('task1')}');
//   // true

//   // UPDATE
//   tasks['task2'] = 'Completed'; // Update the status of task2
//   tasks.putIfAbsent('task4', () => 'Pending'); // Only adds if not present
//   print('After Update: $tasks');
//   // {task1: Pending, task2: Completed, task3: Completed, task4: Pending}

//   // DELETE
//   tasks.remove('task1'); // Remove task1
//   print('After Removal: $tasks');
//   // {task2: Completed, task3: Completed, task4: Pending}

//   // SORT (by key)
//   var entriesList = tasks.entries.toList();
//   entriesList.sort((a, b) => a.key.compareTo(b.key));
//   var sortedTasks = { for (var e in entriesList) e.key : e.value };
//   print('Sorted by Key: $sortedTasks');
//   // {task2: Completed, task3: Completed, task4: Pending}

//   // SORT (by value)
//   entriesList.sort((a, b) => a.value.compareTo(b.value));
//   var sortedByValue = { for (var e in entriesList) e.key : e.value };
//   print('Sorted by Value: $sortedByValue');
//   // {task2: Completed, task3: Completed, task4: Pending} 
//   // (Since 'Completed' is lexicographically before 'Pending')
// }




//  Summary

// - Create a map using literals (`{}` with `key: value` pairs) or constructors.
// - Read entries by key (`map[key]`), check with `containsKey` / `containsValue`.
// - Update existing entries or add new ones by `map[key] = value`, `putIfAbsent`, or `addAll`.
// - Delete entries by key (`remove(key)`) or clear entirely (`clear()`).
// - Sort by converting map entries to a list, sorting, then reconstructing a map if needed.  
// - Additional methods like `map()`, `forEach()`, `removeWhere()`, `isEmpty`, `length`, etc., allow more complex manipulations and checks.

// Working with Map is ideal for storing and quickly looking up data by a unique key. It’s a versatile data structure that can be used in various scenarios, from simple key-value pairs to more complex data mappings.