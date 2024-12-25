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
