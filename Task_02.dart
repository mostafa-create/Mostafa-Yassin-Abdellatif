import 'dart:io';
void main() {
  List<String> student_names = [];
  List<List<double>> student_grades = [];
  try {
    print("Enter number of students:");
    int totalStudents = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < totalStudents; i++) {
      print("Enter student ${i + 1} name:");
      String name = stdin.readLineSync()!;
      print("Enter number of subjects:");
      int totalSubjects = int.parse(stdin.readLineSync()!);
      List<double> individualGrades = [];
      for (int j = 0; j < totalSubjects; j++) {
        print("Enter grade for subject ${j + 1}:");
        double grade = double.parse(stdin.readLineSync()!);
        individualGrades.add(grade);
      }
      student_names.add(name);
      student_grades.add(individualGrades);
    }
    while (true) {
      print("\n===== MENU =====");
      print("1. Show All Results");
      print("2. Search Student");
      print("3. Exit");
      stdout.write("Choose an option: ");
      int choice = int.parse(stdin.readLineSync()!);

      if (choice == 1) {
        showAllResults(student_names, student_grades);
      } else if (choice == 2) {
        searchStudent(student_names, student_grades);
      } else if (choice == 3) {
        print("Exiting program....");
        break;
      } else {
        print("Invalid choice! Please select 1, 2, or 3");
      }
    }
  } catch (e) {
    print("Invalid input! Please enter correct data format");
  }
}

double calculateAverage(List<double> grades) {
  if (grades.isEmpty) return 0.0;
  double sum = 0;
  for (double g in grades) {
    sum += g;
  }
  return sum / grades.length;
}

String determineLetterValue(double avg) {
  if (avg >= 85) return "A";
  if (avg >= 70) return "B";
  if (avg >= 50) return "C";
  return "F";
}

void showAllResults(List<String> names, List<List<double>> grades) {
  if (names.isEmpty) {
    print("No student records available.");
    return;
  }
  for (int i = 0; i < names.length; i++) {
    double avg = calculateAverage(grades[i]);
    String letterGrade = determineLetterValue(avg);
    print(
      "${names[i].toUpperCase()} - Avg: ${avg.toStringAsFixed(2)} - Grade: $letterGrade",
    );
  }
}

void searchStudent(List<String> names, List<List<double>> grades) {
  print("Enter student name to search:");
  String Value = stdin.readLineSync()!;
  bool recordFound = false;
  for (int i = 0; i < names.length; i++) {
    if (names[i].toLowerCase() == Value.toLowerCase()) {
      double avg = calculateAverage(grades[i]);
      print("${names[i]} Avg: ${avg.toStringAsFixed(2)}");
      recordFound = true;
    }
  }
  if (!recordFound) {
    print("Student not found!");
  }
}
