import 'package:studenttask/person.dart';

class Student extends Person {
  String email;
  int phone;
  Map<String, double> subjects;

  Student({
    required id,
    required name,
    required age,
    required address,
    required this.email,
    required this.phone,
    required this.subjects,
  }) : super(
          name: name,
          address: address,
          age: age,
          id: id,
        );

  @override
  printData() {
    print(super.printData() + ",email $email, phone $phone ");
  }

  showSubjects() {
    print("Student's degree");

    subjects.forEach(((key, value) => print(" $key : $value")));
  }

  addSubject(String subject, double degree) {
    subjects[subject] = degree;
  }
}
