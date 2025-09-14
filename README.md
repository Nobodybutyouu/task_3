# Group Task 3 – Encapsulation & Inheritance (Dart)

## Project Overview
This project demonstrates the **Object-Oriented Programming concepts of Encapsulation and Inheritance** in Dart.

- The **base class** is `Employee`, which has private attributes (`_id`, `_salary`), getters, setters with validation, and methods (`increaseSalary`, `deductTax`).
- Three **derived classes** extend `Employee`:
  - `Manager` → has `department`, method `assignTask()`, and overridden `increaseSalary()` with bonus.
  - `Developer` → has `programmingLanguage`, method `writeCode()`, and overridden `deductTax()` with discount.
  - `Intern` → has `school`, method `submitReport()`, and overridden `increaseSalary()` with salary cap.

The final demo is in `main.dart`, which creates instances of each class and shows how encapsulation and inheritance work.

---

## Team Members
- Member 1 – Base Class: Employee  
- Member 2 – Derived Class: Manager  
- Member 3 – Derived Class: Developer  
- Member 4 – Derived Class: Intern  

---

## Files Added
- `lib/employee.dart` → Base class  
- `lib/manager.dart` → Derived class (Manager)  
- `lib/developer.dart` → Derived class (Developer)  
- `lib/intern.dart` → Derived class (Intern)  
- `lib/main.dart` → Final program demo  

---

## How to Run

### 1. Clone the repository
```bash
git clone <repo-url>
cd <repo-folder>

2. Make sure Dart is installed

Check version:

dart --version


If not installed, download it here: https://dart.dev/get-dart

3. Run the program
dart run lib/main.dart

Expected Output

Example terminal output:

=== Base Employee Demo ===
Employee: Mark, ID: 1001, Salary: ₱20000.0
Salary increased by ₱5000.0. New salary: ₱25000.0
Tax deducted: ₱3000.0. Remaining salary: ₱22000.0
Setter validation -> Invalid argument(s): Salary cannot be negative.

=== Manager Demo ===
Manager Alice assigned task: Prepare annual report to department IT.
Salary increased by ₱5500.0. New salary: ₱45500.0
Manager bonus applied: ₱500.0.

=== Developer Demo ===
Developer Bob is coding Inventory System in Dart.
Tax deducted: ₱4500.0. Remaining salary: ₱25500.0
Developer tax discount applied: ₱500.0.

=== Intern Demo ===
Intern Charlie from BPSU submitted report: Weekly Progress.
Intern salary cannot exceed ₱10000.

Features Demonstrated

Encapsulation

Private attributes (_id, _salary)

Getters & setters with validation

Methods that safely modify state

Inheritance

Derived classes (Manager, Developer, Intern) extend Employee

Each class has a unique property and method

Overridden methods show different behavior
