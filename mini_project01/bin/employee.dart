abstract class Employee {
  String _name;

  String _position;

  Employee(this._name, this._position);

  String get name => _name;

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    }
  }

  String get position => _position;
  set position(String value) {
    if (value.isNotEmpty) {
      _position = value;
    }
  }

  void showBasicInfo() {
    print("Nama: $name");
    print("Posisi: $position");
  }
}

abstract class CalculateSalary {
  double calculateSalary();
}

abstract class Reportable {
  void generateReport();
}

class Developer extends Employee implements CalculateSalary, Reportable {
  final double _basicSalary;

  Developer(super.name, super.position, this._basicSalary);

  @override
  double calculateSalary() {
    return _basicSalary + 1000000; 
  }

  @override
  void generateReport() {
    print("=== Report Developer ===");
    showBasicInfo();
    print("Total Gaji: ${calculateSalary()}");
    print("------------------------");
  }
}


class Manager extends Employee implements CalculateSalary, Reportable {
  final double _basicSalary;

  Manager(super.name, super.position, this._basicSalary);

  @override
  double calculateSalary() {
    return _basicSalary + 2000000; 
  }

  @override
  void generateReport() {
    print("=== Report Manager ===");
    super.showBasicInfo();
    print("Total Gaji: ${calculateSalary()}");
    print("----------------------");
  }
}