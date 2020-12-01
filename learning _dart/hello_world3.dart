void main() {
  // boolean algebra
  bool t = true;
  bool f = false;

  // 3 operations
  // && and
  // || or
  // ! not (bang operator)

  // while (true) {
  //   print("Something happens");
  // }
  int x = 1;
// do while make same that while but run at least one time
  do {
    print("somethin");
    x -= 1;
  } while (x > 0);

  //for loop variants

  int smallNumber = 5;
  for (int i = 0; i < smallNumber; i++) {
    print(i);
  }

  //for var in list dart take the strings as list too

  String tempString = "ässdt";
  for (String char in tempString.split('')) {
    print(char * 2);
  }
  // String str = '\n' make a new line like python
}
