// Dart: final vs const vs late with Data Types and Classes
void main() {
  print('============ FINAL vs CONST vs LATE ============');

  // ==========================================================================
  // 1. FINAL
  // - Value can be set only once
  // - Value is determined at runtime
  // - Can be initialized later in constructors
  // ==========================================================================
  print('\n--- FINAL EXAMPLES ---');

  final String finalString = 'This is a final string';
  final int finalInt = 10;
  final finalWithoutType = 'Type inference works with final';
  // finalString = 'Try to change'; // ERROR: Can't assign to final variable
  print('finalString: $finalString');
  print('finalInt: $finalInt');
  print('finalWithoutType: $finalWithoutType');

  // Runtime calculations work with final
  final currentTime = DateTime.now();
  print('Current time (final): $currentTime');

  // ==========================================================================
  // 2. CONST
  // - Compile-time constant (value must be known at compile time)
  // - Value is determined at compile time
  // - Can't use values that are determined at runtime
  // ==========================================================================
  print('\n--- CONST EXAMPLES ---');

  const String constString = 'This is a const string';
  const int constInt = 20;
  const constWithoutType = 'Type inference works with const too';

  // constString = 'Try to change'; // ERROR: Can't assign to const variable
  print('constString: $constString');
  print('constInt: $constInt');
  print('constWithoutType: $constWithoutType');

  // const currentTimeConst = DateTime.now(); // ERROR: Not a constant expression

  // Compile time calculations work with const
  const double pi = 3.14159;
  const double area = pi * 10 * 10; // Calculated at compile time
  print('Circle area (const): $area');

  // ==========================================================================
  // 3. LATE
  // - Declares non-nullable variables that will be initialized later
  // - Useful for lazy initialization
  // - Throws error if accessed before initialization
  // ==========================================================================
  print('\n--- LATE EXAMPLES ---');

  // Late initialization
  late String lateString;
  late int lateInt;

  // Initialize later
  lateString = 'This string was initialized later';
  lateInt = calculateExpensiveValue();

  print('lateString: $lateString');
  print('lateInt: $lateInt');

  // Lazy initialization - only executes when first accessed
  late String lazyValue = getExpensiveString();
  print('About to access lazy value...');
  print('lazyValue: $lazyValue'); // Only now is getExpensiveString() called

  // ==========================================================================
  // 4. DIFFERENCES IN COLLECTIONS
  // ==========================================================================
  print('\n--- COLLECTIONS WITH FINAL AND CONST ---');

  // Final List - can modify content
  final List<int> finalList = [1, 2, 3];
  finalList.add(4); // OK - content can be modified
  // finalList = [5, 6]; // ERROR - can't reassign the variable
  print('finalList after modification: $finalList');

  // Const List - can't modify content
  const List<int> constList = [1, 2, 3];
  // constList.add(4); // ERROR - can't modify a constant list
  // constList = [5, 6]; // ERROR - can't reassign the variable
  print('constList (immutable): $constList');

  // ==========================================================================
  // 5. DART DATA TYPES
  // ==========================================================================
  print('\n============ DART DATA TYPES ============');

  // Numbers
  int integerValue = 42;
  double doubleValue = 3.14;
  num numValue1 = 10; // Can be either int or double
  num numValue2 = 10.5; // Can be either int or double

  print('\n--- NUMBERS ---');
  print('int: $integerValue');
  print('double: $doubleValue');
  print('num as int: $numValue1');
  print('num as double: $numValue2');

  // String
  String singleQuote = 'Single quotes';
  String doubleQuote = "Double quotes";
  String multiLine = '''
This is a
multi-line
string''';
  String interpolation = 'Value of integerValue: $integerValue';

  print('\n--- STRINGS ---');
  print('singleQuote: $singleQuote');
  print('doubleQuote: $doubleQuote');
  print('multiLine: $multiLine');
  print('interpolation: $interpolation');

  // Boolean
  bool trueValue = true;
  bool falseValue = false;

  print('\n--- BOOLEANS ---');
  print('trueValue: $trueValue');
  print('falseValue: $falseValue');

  // Lists (Arrays)
  List<int> numberList = [1, 2, 3, 4, 5];
  List<dynamic> mixedList = [1, 'two', true, 4.5];
  var inferredList = [10, 20, 30]; // Type inferred as List<int>

  print('\n--- LISTS ---');
  print('numberList: $numberList');
  print('mixedList: $mixedList');
  print('inferredList: $inferredList');
  print('List operations:');
  print('  - First element: ${numberList.first}');
  print('  - Length: ${numberList.length}');
  numberList.add(6);
  print('  - After adding 6: $numberList');

  // Sets
  Set<String> uniqueNames = {'Alice', 'Bob', 'Charlie'};
  uniqueNames.add('Alice'); // Duplicates are ignored

  print('\n--- SETS ---');
  print('uniqueNames: $uniqueNames');
  print('Contains Bob? ${uniqueNames.contains('Bob')}');

  // Maps (Dictionaries)
  Map<String, int> ages = {'Alice': 30, 'Bob': 25, 'Charlie': 35};

  print('\n--- MAPS ---');
  print('ages: $ages');
  print('Bob\'s age: ${ages['Bob']}');
  ages['David'] = 40;
  print('After adding David: $ages');
  Map<dynamic, int> ages2 = {123: 30, "12314": 25, 73738: 35};

  // print('\n--- MAPS ---');
  // print('ages: $ages');
  // print('Bob\'s age: ${ages['Bob']}');
  ages2["123"] = 40;
  print('After adding David: $ages2');

  // Runes (for expressing Unicode characters)
  String runeString = 'Dart \u{1F60E}';

  print('\n--- RUNES ---');
  print('runeString: $runeString');

  // Symbols
  Symbol symbolValue = #symbolName;

  print('\n--- SYMBOLS ---');
  print('symbolValue: $symbolValue');

  // ==========================================================================
  // 6. CLASSES AND OBJECTS
  // ==========================================================================
  print('\n============ CLASSES AND OBJECTS ============');

  // Creating instances
  var person = Person('John Doe', 30);
  print('\n--- BASIC CLASS ---');
  print('Person: ${person.name}, ${person.age}');
  person.sayHello();

  // Using final, const, and late in classes
  var student = Student('Alice Smith', 20, 'Computer Science');
  print('\n--- CLASS WITH FINAL, CONST, LATE ---');
  print('Student before graduation:');
  print('  Name: ${student.name}');
  print('  Age: ${student.age}');
  print('  Major: ${student.major}');
  print('  ID: ${student.id}');
  print('  School: ${Student.schoolName}');
  Student.schoolName = 'University of Dart 2';
  print('  School: ${Student.schoolName}');
  student.graduate();
  print('Student after graduation:');
  print('  Graduated: ${student.hasGraduated}');
  print('  Graduation Date: ${student.graduationDate}');

  // Inheritance
  var employee = Employee('Bob Johnson', 35, 'Engineering', 75000);
  print('\n--- INHERITANCE ---');
  print('Employee:');
  print('  Name: ${employee.name}');
  print('  Age: ${employee.age}');
  print('  Department: ${employee.department}');
  print('  Salary: \$${employee.salary}');
  employee.sayHello(); // Overridden method
  employee.work();

  // Using abstract class
  var circle = Circle(5.0);
  var rectangle = Rectangle(4.0, 6.0);

  print('\n--- ABSTRACT CLASSES ---');
  print('Circle area: ${circle.calculateArea()}');
  print('Rectangle area: ${rectangle.calculateArea()}');

  // Using mixins
  var musician = Musician('Charlie Brown', 40);

  print('\n--- MIXINS ---');
  musician.sayHello();
  musician.playInstrument();
  musician.sing();
}

// Helper functions for LATE examples
int calculateExpensiveValue() {
  print('Calculating expensive value...');
  return 42;
}

String getExpensiveString() {
  print('Now executing expensive string calculation...');
  return 'Expensive string value';
}

// ==========================================================================
// BASIC CLASS
// ==========================================================================
class Person {
  String name;
  int age;

  // Constructor
  Person(this.name, this.age);

  // Method
  void sayHello() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// ==========================================================================
// CLASS WITH FINAL, CONST, AND LATE
// ==========================================================================
class Student {
  // Regular property - can be changed
  String name;
  int age;

  // Final property - can't be changed after initialization
  final String major;

  // Final property with initialization in constructor body
  final String id;

  // Late property - initialized when needed
  late bool hasGraduated;

  // Late property that will be set later
  late DateTime graduationDate;

  // Static const - shared by all instances, determined at compile time
  static String schoolName = 'University of Dart';

  // Constructor
  Student(this.name, this.age, this.major)
    : id = 'S-${DateTime.now().millisecondsSinceEpoch}' {
    hasGraduated = false;
  }
  // Method that sets the late property
  static void graduate2() {
    print('aksjd');
  }

  // Method that sets the late property
  void graduate() {
    hasGraduated = true;
    graduationDate = DateTime.now();
  }
}

// ==========================================================================
// INHERITANCE
// ==========================================================================
class Employee extends Person {
  String department;
  double salary;

  // Constructor calls the parent constructor with super
  Employee(String name, int age, this.department, this.salary)
    : super(name, age);

  // Override parent method
  @override
  void sayHello() {
    print(
      'Hello, I am $name, a $age-year-old employee in the $department department.',
    );
  }

  // Additional method
  void work() {
    print('$name is working in the $department department.');
  }
}

// ==========================================================================
// ABSTRACT CLASS
// ==========================================================================
abstract class Shape {
  // Abstract method - no implementation
  double calculateArea();
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }
}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

// ==========================================================================
// MIXINS
// ==========================================================================
mixin Musical {
  void playInstrument() {
    print('Playing a musical instrument');
  }

  void sing() {
    print('Singing a song');
  }
}
mixin Musical2 {
  void playInstruasdment() {
    print('Playing a musical instrument');
  }

  void sing() {
    print('Singing a song');
  }
}

class Musician extends Person with Musical, Musical2 {
  Musician(String name, int age) : super(name, age);
}
