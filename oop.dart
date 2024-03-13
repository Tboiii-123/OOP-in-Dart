import 'dart:io';

// Object-oriented model using classes and inheritance
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void sayHello() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// Class implementing an interface
class Student implements Person {
  String name;
  int age;
  int studentId;

  Student(this.name, this.age, this.studentId);

  void sayHello() {
    print('Hello, my name is $name, I am $age years old, and my student ID is $studentId.');
  }
}

// Class that overrides an inherited method
class Teacher extends Person {
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);

  @override
  void sayHello() {
    print('Hello, my name is $name, I am $age years old, and I teach $subject.');
  }
}

// Instance of a class initialized with data from a file
void main() {
  var file = File('data.txt');
  var lines = file.readAsLinesSync();
  var person = Person(lines[0], int.parse(lines[1]));

  person.sayHello();
}

// Method that demonstrates the use of a loop
void printNumbers(int n) {
  for (var i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  var student = Student('Alice', 20, 12345);
  var teacher = Teacher('Bob', 35, 'Mathematics');

  student.sayHello();
  teacher.sayHello();

  printNumbers(5);
}
