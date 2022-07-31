import 'dart:io';

import 'package:studenttask/student.dart';
import 'package:studenttask/students.dart';

void main() {
  var mngstudents = Students();

  loop:
  while (true) {
    print('1- Add Student');
    print('2- Add Subject');
    print('3- Remove Student');
    print('4- Add Degree of Subject');
    print('5- Print student Data');
    print('6- Show Student Grade');
    print('7-Exit');
    print(
        '--------------------------------------------------------------------------------');

    var operation = int.parse(stdin.readLineSync()!);

    switch (operation) {
      case 7:
        break loop;

      case 1: // Add student
        print('\nEnter id,Name,Age,Address,Email,Phone');
        var input = stdin.readLineSync()!.split(',');
        Student s = Student(
            id: int.parse(input[0]),
            name: input[1],
            age: int.parse(input[2]),
            address: input[3],
            email: input[4],
            phone: int.parse(input[5]),
            subjects: {});
        mngstudents.addStudent(s);

        break;
      case 2: //add subj
        print("Enter Student id, Subject ");
        var input = stdin.readLineSync()!.split(',');
        mngstudents.updateStudentSubject(int.parse(input[0]), input[1], 0.0);
        break;

      case 3: //   Remove student
        print('\nEnter Student ID');
        var input = int.parse(stdin.readLineSync()!);
        mngstudents.removeStudent(input);
        break;

      case 4: // ADD Degree of subject
        print('\nEnter ID, Subject Name , Degree');
        print(
            "Subject (1-Arabic, 2-English, 3-Matha, 4-Scince, 5-Islamic, 6-Art");
        var input = stdin.readLineSync()!.split(',');
        mngstudents.updateStudentSubject(
            int.parse(input[0]), input[1], double.parse(input[2]));
        break;

      case 5: // Print Student Data
        mngstudents.printAll();
        break;

      case 6: // Show Final Student Grade
        print('\nEnter Student ID');
        var input = int.parse(stdin.readLineSync()!);

        mngstudents.calculateStudentGrade(input);
        break;

      default:
        print('Enter Valid Choice');
    }
  }
}
