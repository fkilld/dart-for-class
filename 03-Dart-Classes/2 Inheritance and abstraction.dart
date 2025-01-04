////////////////////////////////////////////////////////////
// 1. Single Inheritance                                  //
////////////////////////////////////////////////////////////

// In Dart, we use 'extends' to inherit from a parent class.

// Parent class: Father
class Father {
  // A method representing father's property
  void fatherProperty() {
    print("This is father property");
  }
}

// Child class: Son inherits from Father
class Son extends Father {
  // A method to represent son's job
  void job() {
    print("Son has a job");
  }
}

////////////////////////////////////////////////////////////
// 2. Method Overriding in Single Inheritance             //
////////////////////////////////////////////////////////////

// Parent class: Fruit
class Fruit {
  // A method to show fruit info
  void fruitInfo() {
    print("Inside Parent class - Fruit");
  }
}

// Child class: Apple inherits from Fruit
class Apple extends Fruit {
  // Overriding fruitInfo() method
  @override
  void fruitInfo() {
    print("Inside Child class - Apple (Method Overriding)");
  }

  // A separate method for Apple info
  void appleInfo() {
    print("Inside the child class - Apple");
  }
}

////////////////////////////////////////////////////////////
// 3. Multi-Level Inheritance                             //
////////////////////////////////////////////////////////////
// In Dart, multi-level inheritance is just repeated 'extends'
// across multiple generations of classes.

// GrandFather Class
class GrandFather {
  void propGrandFather() {
    print("I am your grandfather");
  }
}

// Father class inherits from GrandFather
class Father2 extends GrandFather {
  void propFather() {
    print(
        "I am your father, having my own property plus your grandfather's property");
  }
}

// Son class inherits from Father2 (which already inherits from GrandFather)
class Son2 extends Father2 {
  void propSon() {
    print("I am the son, having property of my father and grandfather");
  }
}

////////////////////////////////////////////////////////////
// 4. Multiple Inheritance (approximating in Dart)        //
////////////////////////////////////////////////////////////
// Dart does NOT support multiple inheritance like Python.
// Instead, we can use 'mixins' or multiple interfaces.
//
// Example: class Child extends Parent1 with Parent2Mixin
// or       class Child implements Parent1, Parent2
//
// We'll show how to do it using mixins, which is the closest
// Dart equivalent to multiple inheritance behaviors.

// First parent class (or base class)
class ParentClass1 {
  void method1() {
    print("method 1 of ParentClass1");
  }
}

// Second "parent" as a mixin
mixin ParentClass2Mixin {
  void method2() {
    print("method 2 of ParentClass2Mixin");
  }
}

// Child class that inherits from ParentClass1 AND uses ParentClass2Mixin
class ChildClass extends ParentClass1 with ParentClass2Mixin {
  void childMethod() {
    print("child method of ChildClass");
  }
}

////////////////////////////////////////////////////////////
// 5. Demonstrating the "Diamond Problem" Approximation   //
////////////////////////////////////////////////////////////
// In Python, the Diamond Problem arises with multiple inheritance
// like: class D(C, B) and both B, C inherit from A.
// In Dart, we can't replicate it exactly as in Python,
// but we can use mixins and see how method resolution might work.

// Base class A
class A {
  void method() {
    print("Method of class A");
  }
}

// Class B extends A
class B extends A {
  @override
  void method() {
    print("Method of class B");
  }
}

// Class C extends A
class C extends A {
  @override
  void method() {
    print("Method of class C");
  }
}

// Mixin to combine B and C is not straightforward in Dart.
// Instead, we can do an example with multiple interfaces:

// We'll make B, C "interfaces" by using the 'implements' keyword:
abstract class IA {
  void method();
}

class IB implements IA {
  @override
  void method() {
    print("Method of interface B");
  }
}

class IC implements IA {
  @override
  void method() {
    print("Method of interface C");
  }
}

// Now the "Diamond" scenario is contrived in Dart, but let's show
// how a class D might implement both:
class D implements IB, IC {
  // We must implement method() once, choosing which logic to keep
  @override
  void method() {
    print("Merged method in class D - a single override in Dart");
  }
}

////////////////////////////////////////////////////////////
// 6. Hierarchical Inheritance                            //
////////////////////////////////////////////////////////////
// In hierarchical inheritance, multiple child classes
// inherit from one parent class.

class Vehicle {
  void info() {
    print("This is Vehicle");
  }
}

// Car inherits from Vehicle
class Car2 extends Vehicle {
  void carInfo(String name) {
    print("Car info: $name");
  }
}

// Truck inherits from Vehicle
class Truck extends Vehicle {
  void truckInfo(String name) {
    print("Truck info: $name");
  }
}

////////////////////////////////////////////////////////////
// 7. Hybrid Inheritance (combination of types)           //
////////////////////////////////////////////////////////////
// Hybrid inheritance is usually a mix of hierarchical, multiple,
// and multi-level inheritance. We'll do a quick demonstration
// by combining Car3 with mixin or extends.

// Base class
class Vehicle2 {
  void vehicleInfo() {
    print("Inside Vehicle2 class");
  }
}

// Another base class as a mixin
mixin ExtraFeatures {
  void extraFeature() {
    print("Extra feature from mixin");
  }
}

// Car3 extends Vehicle2
class Car3 extends Vehicle2 {
  void carInfo() {
    print("Inside Car3 class");
  }
}

// Truck2 also extends Vehicle2
class Truck2 extends Vehicle2 {
  void truckInfo(String name) {
    print("Truck2 info: $name");
  }
}

// SportsCar inherits from Car3 AND uses ExtraFeatures mixin
// (hybrid approach).
class SportsCar extends Car3 with ExtraFeatures {
  void sportsInfo() {
    print("Inside sports car class (SportsCar)");
  }
}

////////////////////////////////////////////////////////////
// 8. Abstraction                                         //
////////////////////////////////////////////////////////////
// In Dart, we create abstract classes using the 'abstract' keyword.
// Abstract methods are methods without a body.
// Any class extending an abstract class must implement those methods.

// Example 1:
abstract class Azad {
  // Abstract method: studentDetails
  void studentDetails();

  // Abstract method: studentAssignment
  void studentAssignment();

  // Abstract method: studentMarks();
  void studentMarks();
}

// DataScience class extends Azad and must implement abstract methods
class DataScience extends Azad {
  @override
  void studentDetails() {
    print("Data Science course student details");
  }

  @override
  void studentAssignment() {
    // Not implemented in the original Python code, but must be implemented in Dart
    print("Data Science assignment details");
  }

  @override
  void studentMarks() {
    print("Data Science course student's marks");
  }
}

// WebDev class extends Azad
class WebDev extends Azad {
  @override
  void studentDetails() {
    // Not implemented in the original code, but required in Dart
    print("WebDev course student details");
  }

  @override
  void studentAssignment() {
    print("This will give student assignment of WebDev class");
  }

  @override
  void studentMarks() {
    print("give WebDev student's marks");
  }
}

// Example 2: Shape abstract class
abstract class Shape {
  // Abstract method to calculate area
  void calculateArea();
}

// Rectangle extends Shape
class Rectangle extends Shape {
  @override
  void calculateArea() {
    print("Area of rectangle: length * breadth");
  }
}

// Circle extends Shape
class Circle extends Shape {
  @override
  void calculateArea() {
    print("Area of circle: π * r^2");
  }
}

////////////////////////////////////////////////////////////
// MAIN FUNCTION: Demo usage of all the classes           //
////////////////////////////////////////////////////////////
void main() {
  print("=============== SINGLE INHERITANCE ===============");
  // Son inherits from Father
  Son childObj = Son();
  childObj.job(); // Child class method
  childObj.fatherProperty(); // Inherited from Father

  Father fatherObj = Father();
  fatherObj.fatherProperty();
  // fatherObj.job(); // This line would cause an error in Dart
  // because Father doesn't have 'job()' - demonstrating the concept
  // that the parent doesn't inherit from the child.

  print("\n=============== METHOD OVERRIDING ===============");
  Apple appleObj = Apple();
  appleObj.appleInfo(); // Apple-specific method
  appleObj.fruitInfo(); // Overridden method in Apple

  print("\n=============== MULTI-LEVEL INHERITANCE ===============");
  Son2 son2 = Son2();
  son2.propSon(); // Son2 method
  son2.propFather(); // Inherited from Father2
  son2.propGrandFather(); // Inherited from GrandFather

  print("\n=============== MULTIPLE INHERITANCE (Mixins) ===============");
  ChildClass mixinChild = ChildClass();
  mixinChild.childMethod(); // Own method
  mixinChild.method1(); // From ParentClass1
  mixinChild.method2(); // From ParentClass2Mixin

  print("\n=============== DIAMOND PROBLEM (Approximation) ===============");
  D dObj = D();
  dObj.method(); // Single override in class D

  print("\n=============== HIERARCHICAL INHERITANCE ===============");
  Car2 carObj = Car2();
  carObj.info();
  carObj.carInfo("BMW");

  Truck truckObj = Truck();
  truckObj.info();
  truckObj.truckInfo("Ford");

  print("\n=============== HYBRID INHERITANCE (Mix) ===============");
  SportsCar sportsCar = SportsCar();
  sportsCar.vehicleInfo(); // From Vehicle2
  sportsCar.carInfo(); // From Car3
  sportsCar.sportsInfo(); // Own method
  sportsCar.extraFeature(); // From ExtraFeatures mixin

  print("\n=============== ABSTRACTION EXAMPLE ===============");
  // Abstract classes cannot be instantiated directly in Dart
  // Azad azadObj = Azad(); // <-- Not allowed

  // But we can instantiate concrete subclasses:
  DataScience dsObj = DataScience();
  dsObj.studentDetails();
  dsObj.studentAssignment();
  dsObj.studentMarks();

  WebDev wbObj = WebDev();
  wbObj.studentDetails();
  wbObj.studentAssignment();
  wbObj.studentMarks();

  print("\n=============== SHAPE ABSTRACTION EXAMPLE ===============");
  Rectangle rect = Rectangle();
  rect.calculateArea();
  Circle c = Circle();
  c.calculateArea();
}
