import 'employee.dart';

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
}
