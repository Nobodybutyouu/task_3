  class Employee {
  String name;
  int _id;
  double _salary;

  Employee({
    required this.name,
    required int id,
    required double salary,
  })  : _id = id,
        _salary = salary;

  
  int get id => _id;
  double get salary => _salary;

 
  set id(int newId) {
    if (newId <= 0) {
      throw ArgumentError("Employee ID must be positive.");
    }
    _id = newId;
  }

  set salary(double newSalary) {
    if (newSalary < 0) {
      throw ArgumentError("Salary cannot be negative.");
    }
    _salary = newSalary;
  }




  void increaseSalary(double amount) {
    if (amount <= 0) {
      print("Increase amount must be positive.");
      return;
    }
    _salary += amount;
    print("Salary increased by ₱$amount. New salary: ₱$_salary");
  }

  bool deductTax(double amount) {
    if (amount <= 0) {
      print("Invalid tax deduction.");
      return false;
    }
    if (amount > _salary) {
      print("Tax deduction exceeds salary.");
      return false;
    }
    _salary -= amount;
    print("Tax deducted: ₱$amount. Remaining salary: ₱$_salary");
    return true;
  }
}