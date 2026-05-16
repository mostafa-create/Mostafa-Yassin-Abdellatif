void main() {
  Set<String> students = {};

  addStudent(students, "Ahmed");
  addStudent(students, "Ali");
  addStudent(students, "Hoda");

  print("Students using recursion:");
  printStudentsRecursive(students.toList(), 0);
  print("\nStudents using lambda:");
  students.forEach((s) => print(s));
  Set<String> new_students = {"Khalid", "Sally"};
  var merged = {...students, ...new_students};
  print("\nMerged Students:");
  merged.forEach((s) => print(s));

  Map<String, List<double>> student_courses = {};

  addCourse(student_courses, "Ali", "Math", grade: 90);
  addCourse(student_courses, "Ahmed", "Physics", grade: 80);
  addCourse(student_courses, "Hoda", "Chemistry", grade: 70);

  print("\nAverages:");
  print("Ali Avg: ${average_grade(student_courses, "Ali")}");
  print("Ahmed Avg: ${average_grade(student_courses, "Ahmed")}");
  print("Hoda Avg: ${average_grade(student_courses, "Hoda")}");
}
void addStudent(Set<String> students, String name) {
  students.add(name);
}
void printStudentsRecursive(List<String> list, int index) {
  if (index >= list.length) return;
  print(list[index]);
  printStudentsRecursive(list, index + 1);
}
void addCourse(
  Map<String, List<double>> data,
  String student,
  String course, {
  double grade = 0,
}) {
  data.putIfAbsent(student, () => []);
  data[student]!.add(grade);
}
double average_grade(Map<String, List<double>> data, String student) {
  var grades = data[student];
  if (grades == null || grades.isEmpty) return 0;
  double sum = grades.reduce((a, b) => a + b);
  return sum / grades.length;
}