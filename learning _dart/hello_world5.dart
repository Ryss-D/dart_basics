void main() {
  List<int> myList = [1, 2, 3, 4, 5, 6];
  // ctrl + shift + i for format
  List<String> daysOfTheWeeks = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  print(myList.first); //print first element of list .last print last
  myList.add(5);
  myList.forEach((element) =>
      print(element)); // we can replace the arrow function for any functions

// Strings ands Lists are cousings
  String str = "qtyui";

  print(str.split(
      '')); // will split if we do not specify the character it will split by every character

  print(daysOfTheWeeks.join(
      ' Separator ')); // join will join a list of string and we can specify the character that will by in the middle

  // map is rally simillar to foeEach, map loops over , and returns a new list
  //List<String> convertedItems = myList.forEach((n) => n.toString()); we can use it because forEach has typoe void

  List<String> convertedIntes = myList
      .map((n) => n
          .toString()) // we can use any type of function not just arrow functions
      .toList(); // we use .toList beacuse map giveus a iterable path dont exactly a value
  print(convertedIntes);

  List<int> filteredInts =
      myList.where((n) => n > 3).toList(); //where return a map too
  print(filteredInts); // arrow functions are equivalents to lambdas on python

  // reduce and fold
  // take the lsit and return a simgle elemnt
  // combines them through a function we give it
  // fold we can give it an initial value

  int sum = myList.reduce((value, n) => value + n);
  print(sum);

  // int foldedSum = myList.fold(initialValue, (previousValue, element) => null)

  int foldedSum = myList.fold(5, (value, n) => value + n);
  print(foldedSum);
}
