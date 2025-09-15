import 'employee.dart';
import 'manager.dart';

void main() {
  print("=== Base Employee Demo ===");
  Employee emp = Employee(name: "Mark", id: 1001, salary: 20000.0);
  print("Employee: ${emp.name}, ID: ${emp.id}, Salary: ₱${emp.salary}");
  emp.increaseSalary(5000);
  emp.deductTax(3000);

  try {
    emp.salary = -1000;
  } catch (e) {
    print("Setter validation -> ${e.toString()}");
  }

  print("\n=== Manager Demo ===");
  Manager manager = Manager(
    name: "Alice",
    id: 2001,
    salary: 40000.0,
    department: "IT",
  );
  manager.assignTask("Prepare annual report");
  manager.increaseSalary(5000);
}
