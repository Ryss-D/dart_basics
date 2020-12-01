void main() {
  // sayHello();
  // sayHelloName("Nikita");
  // sayHelloName("Pedro");
  // sayHelloOptional([String name]) {
  //   print("hello, $name");
  // }

  // sayHelloOptional();
  // sayHelloOptional("Diana");
  // sayHelloDefault();
  // sayHelloDefault("patata");
  buildGreetingFromName(name: "Maria");
}

sayHello() {
  print("hello, world!");
}

sayHelloName(String name) {
  print("hello, $name");
}

sayHelloDefault([String name = "Ovidius"]) {
  print("hello, $name");
}
//   if(...) {
//   do something
//  } else {
//    do something
//  }

printSquare([int x]) {
  if (x == null) {
    print("No number given");
  } else {
    print("Squeare of $x is ${x * x}");
  }
}

square(int x) {
  int y = x * x;
  return y;
}

// void means "Dont return anything" used on the functions and int means that return a number (Commonly used to express error)
// if we want to describe named arguments instead of positional arguments we nit to :
String buildGreetingFromName({String greeting, String name}) {
  String tempString = '';
  // ! -- not
  if (greeting != null) {
    tempString += greeting;
  } else {
    tempString += "Hello";
  }

  if (name != null) {
    tempString += name;
  } else {
    tempString += "world";
  }
}
// += add str as python
