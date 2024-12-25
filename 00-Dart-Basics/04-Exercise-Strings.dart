void main() {
  // Given string with "x" characters
  var errorMessage = "Uxh oxh, thexre's a bunxch of txypos";

  // Replacing all occurrences of "x" with a blank string
  var correctedMessage = errorMessage.replaceAll(
      'x', ''); // .replaceAll() replaces all occurrences
  print(correctedMessage); // Output: Uh oh, there's a bunch of typos
}
