import 'package:studenttask/student.dart';

class Students {
  List<Student> students = [];

  addStudent(Student s) {
    students.add(s);
  }

  removeStudent(int id) {
    students.removeWhere((element) => element.id == id);
  }

  void updateStudentSubject(int id, String subject, double degree) {
    Student student = students.firstWhere((element) => element.id == id);
    student.addSubject(subject, degree);
  }

  void calculateStudentGrade(int id) {
    Student s = students.firstWhere((element) => element.id == id);

    s.subjects.forEach((key, value) {
      if (value >= 50) {
        print("Subject name : $key --> Success");
      } else {
        print("Subject name : $key --> failed");
      }
    });
  }

  printAll() {
    for (Student e in students) {
      e.printData();
    }
  }
}
