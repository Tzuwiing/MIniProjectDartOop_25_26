import 'employee.dart';

void main() {
  var manager = Manager("Budi", "Manager", 15000000)..generateReport();
  var developer = Developer("Andi", "Developer", 8000000)..generateReport();
}
