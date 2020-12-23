import 'dart:io';

class Person {
  void sayHello() {
    print("hello everyone");
  }

  void eat() {
    print("i ll order fish and chips");
  }
}

// extend takes all og the functions, variables from dthe parent class
// and gives then to our child class

class Student extends Person {
  // can add more functions to this class and reuse the previous
  void study() {
    print("is studing");
  }

  // we can change the current methods of the implemented class using @override

  @override
  void eat() {
    print("rammen pls");
  }
}

// implelemnt takes all  of the gunctions and variables from person, but need to
// redefine them

class Rebel implements Person {
  void sayHello() {
    // we cant change the functions names because we are using the
    // implements keyword
    print("why are you talking to me?");
  }

  void eat() {
    print("Coffee and cigarretes");
  }
}

//Its a diferent thing not a class, something like just a complement
mixin Driver {
  void drive() {
    print("drive nice and clean");
  }
}
// with this we make the things differents

class PlusStudent extends Person with Driver {
  // we can not extend two diferent classes, but we can use multiple classes with the with
  void studentDrive() {
    print("num num");
  }
}

class PlusRebel implements Person, Driver {
  // implment let us implement multiple clases
  @override
  void drive() {
    print("viiiiiiiiiim vimmmm");
  }

  @override
  void eat() {
    print("just beer");
  }

  @override
  void sayHello() {
    print("fuckoff");
  }
}

void main() {
  Person person = Person();
  Student student = Student();
  Rebel rebel = Rebel();
  PlusStudent plusStudent = PlusStudent();
  PlusRebel plusRebel = PlusRebel();

  person.sayHello();
  person.eat();

  student.sayHello();
  student.eat();
  student.study();

  rebel.sayHello();
  rebel.eat();

  plusStudent.studentDrive();
  plusRebel.drive();
}
