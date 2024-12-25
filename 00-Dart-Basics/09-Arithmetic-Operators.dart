void main() {
  // Initialize two variables
  var alpha = 0;
  var beta = 0;

  // METHOD ONE: Manual increment
  // Increment alpha by 1 using explicit addition
  // print(alpha); // Output: 0 (initial value of alpha)
  // alpha = alpha + 1; // Manually increment alpha by 1
  // print(alpha); // Output: 1

  // METHOD TWO: Pre-increment and post-increment
  // Pre-increment (++ before the variable): Increment the variable first, then use it
  // ++alpha; // Pre-increment alpha (increment alpha by 1 before it’s used)
  // print(alpha); // Output: 1 (incremented value of alpha)

  // Post-increment (variable++): Use the variable first, then increment it
  // beta++; // Post-increment beta (use beta’s value, then increment it)
  // print(beta); // Output: 1 (after the increment)

  // METHOD THREE: Pre-increment during reassignment
  // Increment alpha BEFORE assigning its value to beta
  // beta = ++alpha; // Increment alpha by 1, then assign its value to beta
  // print("Alpha is: $alpha"); // Output: Alpha is: 1 (incremented before assignment)
  // print("Beta is $beta"); // Output: Beta is 1 (assigned the incremented value of alpha)

  // METHOD FOUR: Post-increment during reassignment
  // Increment alpha AFTER assigning its value to beta
  beta = alpha++; // Assign alpha's value to beta first, then increment alpha
  print(
      "Alpha is: $alpha"); // Output: Alpha is: 1 (incremented after assignment)
  print(
      "Beta is $beta"); // Output: Beta is 0 (assigned the value of alpha before increment)
}
