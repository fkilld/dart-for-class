void main() {
  // Creating a list of strings
  var myList = ['A', 'B', 'C', 'D', 'E']; // A list containing 5 elements

  // Method 1: Using indexing
  // The index of the last item is myList.length - 1
  print(myList[myList.length - 1]);
  // Output: E (last element in the list)

  // Method 2: Using the .last property
  // The .last property directly returns the last item of the list
  print(myList.last);
  // Output: E (last element in the list)
}
