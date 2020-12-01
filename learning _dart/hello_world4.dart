void main() {
  String isNumberEven(int i) {
    if (i % 2 == 0) {
      return "Number is even";
    } else {
      return "Number is odd";
    }
  }

  print(isNumberEven(123));

  // ternary operator is short hand for if / else
  String isNumberEvenTernary(int i) {
    return i % 2 == 0 ? "Number is even" : "Number is odd";
    // we can make too

    //return i % 2 == 0 ? "Number is even" : "Number is odd";
  }

  print(isNumberEvenTernary(123));
  String isNumberEvenArrow(int i) =>
      i % 2 == 0 ? "Number is even" : "Number is odd";
  print(isNumberEvenArrow(123));

  // assert keyword
  // if everything is fine, we'll see not output
  // id our assertion fails)id the condition false)_ it will throw AssertionError

  for (int i = 0; i < 1000; i++) {
    assert(isNumberEvenArrow(i) == isNumberEvenTernary(i));
    assert(isNumberEvenTernary(i) == isNumberEven(i));
  }
// assertions dont  run in production code, just in development code
// for check on terminal we have to iuse the flag --enable-asserts

//list in dart an array
//it puts a colelction of objects
  List<int> newList =
      []; // specificate the type of list if we dont it will be dinamic

  for (int i = 0; i < 123; i += 3) {
    newList.add(i);
  }

  print(newList);

  List dynamicList = []; //  we can use to List<dinamic>

  for (int i = 0; i < 1233; i += 5) {
    i % 2 == 0 ? dynamicList.add("i is even") : dynamicList.add(i);
  }

  print(dynamicList);
}
