class Person {
  String name;
  int _age;

  static String universityName = "Sohag University";
  Person({required this.name, required int age}) : _age = age;
  int get age => _age;
  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print("Invalid age");
    }
  }
}
class Employee extends Person {
  double salary;
  Employee({
    required String name,
    required int age,
    required this.salary,
  }) : super(name: name, age: age);

  void showInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}
abstract class Skills {
  void programming();
  void communication();
}
class Developer extends Employee implements Skills {
  Developer({
    required String name,
    required int age,
    required double salary,
  }) : super(name: name, age: age, salary: salary);

  @override
  void programming() {
    print("$name can program in Dart");
  }

  @override
  void communication() {
    print("$name has good communication skills");
  }
}
void main() {
  Developer dev = Developer(name: "Ali", age: 30, salary: 15000);
  dev.showInfo();
  dev.programming();
  dev.communication();

  print("University: ${Person.universityName}");
}