// we will tall about oop

class Student {
    // something is private if it only can be acces inside the class (for example gpa)
    // the underscore("_") make the attribute(variables inside the class) private
    duble _gpa;
    String university;
    // method its just a function inside of a class
    void printUniversity(){
        print(university);
    }

    // we can set constrains and setter

    void setGpa(double gpa){
        if (gpa <0){
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
    newStudent._gpa = 4.0; // we cant modify directly the _gpa because we make int private, then we need to acces it via setters
    //now we need a getter to get the value of the private value
    newStudent.university = "Harvard university";

    newStudent.printUniversity();
    print(newStudent.gpa);// then we acces to the _gpa but not directly (like a attribute ), now via the getter method that we define via arrow function
    print(newStudent.isFailing);
}
