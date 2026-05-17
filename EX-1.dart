enum Skill { FLUTTER, DART, OTHER }

class Employee {
  final String _name;
  final double _baseSalary;
  //q1.skills: A list of skills,address class,year of exp
  List<Skill> _skills = [];
  final Address _address;
  final int _yearsOfExperience;

  Employee(
    this._name,
    this._baseSalary,
    this._skills,
    this._address,
    this._yearsOfExperience,
  );
  //add name constr
  Employee.mobileDeveloper(
    String name,
    double baseSalary,
    Address address,
    int yearsOfExperience,
  ) : this(
        name,
        baseSalary,
        [Skill.FLUTTER, Skill.DART],
        address,
        yearsOfExperience,
      );
  //get method to get private atribute
  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  //add method to compute salary
  double computeSalary() {
    double salary = baseSalary;
    salary += _yearsOfExperience * 2000.0;
    if (_skills.contains(Skill.FLUTTER)) salary += 5000.0;
    if (_skills.contains(Skill.DART)) salary += 3000.0;
    if (_skills.contains(Skill.OTHER)) salary += 1000.0;
    return salary;
  }

  void printDetails() {
    print('Employee: $name, Base Salary: \$${baseSalary}');
  }
}

class Address {
  String _street;
  String _city;
  String _zipCode;
  Address(this._street, this._city, this._zipCode);
  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;
}

void main() {
  var emp1 = Employee(
    'Sokea',
    40000,
    [Skill.DART],
    Address('123 st', 'pp', '00000'),
    5,
  );
  emp1.printDetails();

  var emp2 = Employee(
    'Ronan',
    45000,
    [Skill.DART, Skill.FLUTTER],
    Address('456 st', 'pp', '00000'),
    5,
  );
  emp2.printDetails();
  print(emp1.computeSalary());
}
