// we will tall about oop

class Student {
  // something is private if it only can be acces inside the class (for example gpa)
  // the underscore("_") make the attribute(variables inside the class) private
  late double _gpa;
  late bool _isFailing;
  late String university;
  //we add late to avoid the erros, it means that variable can be initilized later
  // method its just a function inside of a class
  void printUniversity() {
    print(university);
  }

  // we can set constrains and setter

  void setGpa(double gpa) {
    if (gpa < 0) {
      throw Exception("Gpa cannot be negative");
    }
    if (gpa < 2.0) {
      _isFailing = true;
    } else {
      _isFailing = false;
    }
    _gpa = gpa;
  }

  double get gpa => _gpa;
  bool get isFailing => _isFailing;
}

// methods are just functions inside a class

void main() {
  Student newStudent = Student();
  newStudent._gpa =
      3.0; // we cant modify directly the _gpa because we make int private, then we need to acces it via setters
  //now we need a getter to get the value of the private value insted we have to use
  newStudent.setGpa(4.0);
  newStudent.university = "Harvard university";

  newStudent.printUniversity();
  print(newStudent
      .gpa); // then we acces to the _gpa but not directly (like a attribute ), now via the getter method that we define via arrow function
  print(newStudent.isFailing);
  // Students newNd = Students(gpa:2.0, isFailing:false, university: "Yale")
  // print(newNd)
}

// a private attribute can just be modify in the same file

// thars a way to use constructors

// class Students {
//   double gpa;
//   bool isFailing;
//   String university;

//   Students({double gpa, bool isFailing, String university}) {
//     //constructor one
//     this.gpa = gpa;
//     this.isFailing = isFailing;
//     this.university = university;
//   }
//   Students.positional([this.gpa, this.isFailing, this.university]); // constructor two
//   // we can create and use different constructors
// }
