import 'employee.dart';

class Developer extends Employee {
  String programmingLanguage;

  Developer({
    required String name,
    required int id,
    required double salary,
    required this.programmingLanguage,
  }) : super(name: name, id: id, salary: salary);

  void writeCode(String project) {
    print("Developer $name is coding $project in $programmingLanguage.");
  }

  @override
  bool deductTax(double amount) {

    const double discount = 500.0;
    double finalTax = (amount - discount).clamp(0, amount);
    bool success = super.deductTax(finalTax);
    if (success) {
      print("Developer tax discount applied: ₱$discount.");
    }
    return success;
  }
}
