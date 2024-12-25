void main() {
  // Set of students on the football team
  var footballTeam = {'Andrew', 'Zach', 'Calvin'};

  // Set of students in the school play
  var playCast = {'David', 'Calvin', 'Claire'};

  // Using the intersection method to find common students
  var commonStudents = footballTeam.intersection(playCast);
  // The intersection method returns a new set with elements common to both sets

  print(commonStudents);
  // Output: {Calvin} (only Calvin is in both sets)
}
