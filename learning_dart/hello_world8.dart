// subtyping -- allows us to use  a class as it's parents type

import 'dart:math' as math; // importing like on python

abstract class Shape {
  // abstract prevent us to instance objects of the class
  double getArea();
}

class Rectangle implements Shape {
  //ctl + . to quick fix

  double width;
  double height;

  Rectangle({this.width, this.height});

  //@ are anotations and @required means that we can not do anything if we dont have it

  @override
  double getArea() {
    print("getting rectangle area");
    return width * height;
  }
}

// super let us acces things in the parent class
// in this case we instanciate the clase passing data from child class
class Square extends Rectangle {
  double side;

  Square(this.side) : super(width: side, height: side);
}

class Oval implements Shape {
  final double minorRadius;
  final double majorRadius;

  Oval({this.minorRadius, this.majorRadius});

  @override
  double getArea() {
    print("getting ovals area");
    return minorRadius * majorRadius * math.pi;
  }
}

class Circle extends Oval {
  final double radius;

  Circle(this.radius) : super(minorRadius: radius, majorRadius: radius);
}

void main() {
  Rectangle rectangle = Rectangle(width: 2, height: 4);
  Square square = Square(4);
  Oval oval = Oval(majorRadius: 10, minorRadius: 5);
  Circle circle = Circle(7.5);

  // Polymorphism -- using a clasees childen as that object
  //subtyping
  List<Shape> shapesList = [rectangle, square, oval, circle];

  // a language that is polymorphic knows to get the right data (function) from
  // the right class
  shapesList.forEach((e) {
    e.getArea();
  });
}
//clean code
// database layer(a abstract class) who contains:
// class hiveDB implemnts database
//class sqlightDB implments database
