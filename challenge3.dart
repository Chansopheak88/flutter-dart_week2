class Person {
  String firstName;
  String lastName;
  Person(this.firstName, this.lastName);
  String get fullName {
    return this.firstName + " " + this.lastName;
  }
}

void main() {
  Person p = Person("jonh", "doe");
  print(p.fullName);
}
