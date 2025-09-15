import 'employee.dart';

class Manager extends Employee {
  String department;

  Manager({
    required String name,
    required int id,
    required double salary,
    required this.department,
  }) : super(name: name, id: id, salary: salary);

  void assignTask(String task) {
    print("Manager $name assigned task: $task to department $department.");
  }

  @override
  void increaseSalary(double amount) {
    double bonus = amount * 0.10;
    super.increaseSalary(amount + bonus);
    print("Manager bonus applied: ₱$bonus.");
  }
}
