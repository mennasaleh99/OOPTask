class Person {
  String name;
  int id;
  String address;
  int age;
  Person({
    required this.name,
    required this.id,
    required this.address,
    required this.age,
  });

  printData() {
    print("name is $name , age $age , address $address");
  }
}
