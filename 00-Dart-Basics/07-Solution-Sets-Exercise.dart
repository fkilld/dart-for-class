void main() {
  // Given set of students who are on the football team
  var footballTeam = {'Andrew', 'Zach', 'Calvin'};
  // Set containing three unique names: 'Andrew', 'Zach', and 'Calvin'

  // Given set of students who are in the school play
  var playCast = {'David', 'Calvin', 'Claire'};
  // Set containing three unique names: 'David', 'Calvin', and 'Claire'

  // Finding students who are in BOTH the football team and the school play
  // Method 1: Using intersection method on footballTeam
  print(footballTeam.intersection(playCast));
  // Output: {Calvin} (Calvin is the only student present in both sets)

  // Method 2: Using intersection method on playCast
  print(playCast.intersection(footballTeam));
  // Output: {Calvin} (result is the same, intersection is commutative)
}
