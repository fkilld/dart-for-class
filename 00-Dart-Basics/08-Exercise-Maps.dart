void main() {
  // Given Map of employees with their corresponding values
  var employees = {
    // Key:    Value
    'David': 10,
    'Claire': 5,
    'Calvin': 3
  };

  // Removing the key 'Calvin' and storing its value in a variable
  var calvinValue = employees.remove('Calvin');
  // The .remove() method removes the key 'Calvin' from the Map and returns its value

  // Printing the updated Map after removing 'Calvin'
  print(employees);
  // Output: {David: 10, Claire: 5} (Calvin has been removed)

  // Printing the value of the removed key
  print(calvinValue);
  // Output: 3 (the value associated with 'Calvin')
}
