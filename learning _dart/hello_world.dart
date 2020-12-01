void main() {
  //code runs here
  print("hello, world");
  //strongly type

  var x = 14;
  var firstName = "Ovidius";
  // blue lines means that a variable is not currently use
  // if we do not specify the data type dart will try to inferit

  int number = 99;
  String lastName = "Mazuru";
  double dblNum = 1.2;

  num numNum = 1.2; //It could be a doble or int

  dynamic variable = 123;
  variable = "string";

  // dynamic let us change the variable

  print(variable);

  print("hello, $firstName");
  // we can use $ to format the strings
  print("hello, \$firstName");
  // but if we use a backslash to any special character it will be recogniced as a string
  print("hello, ${number.toString()}");
  // if we use {} we can write a expression into the string

  // we can user all the aritmethic operations like + - / * % (// == ~/)
}
