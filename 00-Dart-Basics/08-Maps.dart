void main() {
  // Declaring a Map of employees
  var employees = {
    // Key:    Value
    'David': 10, // 'David' is the key, 10 is the value
    'Claire': 5, // 'Claire' is the key, 5 is the value
    'Calvin': 3 // 'Calvin' is the key, 3 is the value
  };

  // Accessing the value associated with a specific key
  print(employees['David']);
  // Output: 10 (value associated with the key 'David')

  // Adding a new key-value pair to the map
  employees['Zed'] = 1;
  // Adds a new employee 'Zed' with a value of 1

  // Printing the updated map to confirm the addition
  print(employees);
  // Output: {David: 10, Claire: 5, Calvin: 3, Zed: 1}

  // Accessing a key that is not present in the map
  print(employees['MISSING']);
  // Output: null (Dart returns null for keys that do not exist in the map)
}



////////////////////////////
////////////////////////////
////////////////////////////
///In Dart, the `Map` data type is used to store key-value pairs. It has various methods for adding, modifying, and retrieving data. Below is a list of commonly used `Map` methods, along with examples for better understanding.



//  Commonly Used Map Methods



//  1. `addAll()`
// - Adds all key-value pairs from another map to the current map.
// ```dart
// Map<String, int> scores = {'Math': 80};
// scores.addAll({'Science': 90, 'English': 85});
// print(scores); // Output: {Math: 80, Science: 90, English: 85}
// ```



//  2. `clear()`
// - Removes all key-value pairs from the map.
// ```dart
// Map<String, int> scores = {'Math': 80};
// scores.clear();
// print(scores); // Output: {}
// ```



//  3. `containsKey()`
// - Checks if the map contains a specific key.
// ```dart
// Map<String, int> scores = {'Math': 80};
// print(scores.containsKey('Math')); // Output: true
// ```



//  4. `containsValue()`
// - Checks if the map contains a specific value.
// ```dart
// Map<String, int> scores = {'Math': 80};
// print(scores.containsValue(80)); // Output: true
// ```



//  5. `forEach()`
// - Iterates through each key-value pair.
// ```dart
// Map<String, int> scores = {'Math': 80, 'Science': 90};
// scores.forEach((key, value) {
//   print('$key: $value');
// });
// // Output:
// // Math: 80
// // Science: 90
// ```



//  6. `remove()`
// - Removes a key-value pair by key.
// ```dart
// Map<String, int> scores = {'Math': 80, 'Science': 90};
// scores.remove('Math');
// print(scores); // Output: {Science: 90}
// ```



//  7. `removeWhere()`
// - Removes all key-value pairs that satisfy a condition.
// ```dart
// Map<String, int> scores = {'Math': 80, 'Science': 90};
// scores.removeWhere((key, value) => value < 85);
// print(scores); // Output: {Science: 90}
// ```



//  8. `length`
// - Returns the number of key-value pairs in the map.
// ```dart
// Map<String, int> scores = {'Math': 80, 'Science': 90};
// print(scores.length); // Output: 2
// ```



//  9. `isEmpty`
// - Checks if the map is empty.
// ```dart
// Map<String, int> scores = {};
// print(scores.isEmpty); // Output: true
// ```



//  10. `isNotEmpty`
// - Checks if the map is not empty.
// ```dart
// Map<String, int> scores = {'Math': 80};
// print(scores.isNotEmpty); // Output: true
// ```



//  11. `keys`
// - Returns an iterable containing all the keys.
// ```dart
// Map<String, int> scores = {'Math': 80, 'Science': 90};
// print(scores.keys); // Output: (Math, Science)
// ```



//  12. `values`
// - Returns an iterable containing all the values.
// ```dart
// Map<String, int> scores = {'Math': 80, 'Science': 90};
// print(scores.values); // Output: (80, 90)
// ```



//  13. `update()`
// - Updates the value of a specific key.
// ```dart
// Map<String, int> scores = {'Math': 80};
// scores.update('Math', (value) => value + 10);
// print(scores); // Output: {Math: 90}
// ```



//  14. `updateAll()`
// - Updates all key-value pairs based on a function.
// ```dart
// Map<String, int> scores = {'Math': 80, 'Science': 90};
// scores.updateAll((key, value) => value + 5);
// print(scores); // Output: {Math: 85, Science: 95}
// ```



//  15. `putIfAbsent()`
// - Adds a key-value pair if the key is not already present.
// ```dart
// Map<String, int> scores = {'Math': 80};
// scores.putIfAbsent('Science', () => 90);
// print(scores); // Output: {Math: 80, Science: 90}
// ```



//  16. `map()`
// - Creates a new map by applying a function to all key-value pairs.
// ```dart
// Map<String, int> scores = {'Math': 80, 'Science': 90};
// Map<String, int> updatedScores = scores.map((key, value) => MapEntry(key, value + 10));
// print(updatedScores); // Output: {Math: 90, Science: 100}
// ```



//  17. Accessing Elements
// - You can access a value using its key.
// ```dart
// Map<String, int> scores = {'Math': 80};
// print(scores['Math']); // Output: 80
// ```



//  18. Setting Elements
// - Assign a value to a key or add a new key-value pair.
// ```dart
// Map<String, int> scores = {'Math': 80};
// scores['Science'] = 90; // Adds a new pair
// print(scores); // Output: {Math: 80, Science: 90}
// ```



//  19. `cast()`
// - Casts the map to a different type.
// ```dart
// Map<dynamic, dynamic> scores = {'Math': 80};
// Map<String, int> castScores = scores.cast<String, int>();
// print(castScores); // Output: {Math: 80}
// ```



//  20. `entries`
// - Returns a list of `MapEntry` objects (key-value pairs).
// ```dart
// Map<String, int> scores = {'Math': 80, 'Science': 90};
// print(scores.entries); // Output: (MapEntry(Math: 80), MapEntry(Science: 90))
// ```



//  Summary of Map Methods

// | Method          | Description                                 | Example Output            |
// |----------------------|-----------------------------------------------|--------------------------------|
// | `addAll()`          | Adds all key-value pairs from another map      | `{Math: 80, Science: 90}`     |
// | `clear()`           | Removes all key-value pairs                   | `{}`                          |
// | `containsKey()`     | Checks if a key exists                        | `true`                        |
// | `containsValue()`   | Checks if a value exists                      | `true`                        |
// | `forEach()`         | Iterates through all pairs                    | `Math: 80, Science: 90`       |
// | `remove()`          | Removes a key-value pair                      | `{Science: 90}`               |
// | `removeWhere()`     | Removes pairs based on a condition            | `{Science: 90}`               |
// | `length`            | Number of pairs in the map                    | `2`                           |
// | `isEmpty`           | Checks if the map is empty                    | `true`                        |
// | `isNotEmpty`        | Checks if the map is not empty                | `true`                        |
// | `keys`              | Returns all keys                              | `(Math, Science)`             |
// | `values`            | Returns all values                            | `(80, 90)`                    |
// | `update()`          | Updates a specific key’s value                | `{Math: 90}`                  |
// | `updateAll()`       | Updates all key-value pairs                   | `{Math: 85, Science: 95}`     |
// | `putIfAbsent()`     | Adds a pair if the key is not present          | `{Math: 80, Science: 90}`     |
// | `map()`             | Creates a new map with modified pairs         | `{Math: 90, Science: 100}`    |
// | `entries`           | Returns key-value pairs as `MapEntry` objects | `MapEntry(Math: 80)`          |

// These methods make working with `Map` in Dart powerful and flexible. 