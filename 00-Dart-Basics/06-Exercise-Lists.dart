void main() {
  // Creating a list of strings
  var myList = ['A', 'B', 'C', 'D', 'E']; // A list containing 5 elements

  // Method 1: Using the `last` property
  var lastItem1 =
      myList.last; // The `last` property directly retrieves the last item
  print(
      "Last item using .last: $lastItem1"); // Output: Last item using .last: E

  // Method 2: Using indexing
  var lastItem2 =
      myList[myList.length - 1]; // Access the last item using its index
  print(
      "Last item using indexing: $lastItem2"); // Output: Last item using indexing: E
}
