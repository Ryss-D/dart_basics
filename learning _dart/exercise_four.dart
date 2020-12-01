// how to make a dropdown list showig 0:00, 00:15, ... 23:45
// going by quearter of an hour for the entire day
void main() {
  List<String> quarters = [];
  quarters = makeQuarters();
  print(quarters);
  quarters.forEach((element) => print(element));
}

makeQuarters() {
  List<String> myList = [];
  for (int h = 0; h <= 23; h++) {
    for (int m = 0; m <= 3; m++) {
      m == 0
          ? myList.add('${h > 9 ? h : '0$h'}:00')
          : myList.add('${h > 9 ? h : '0$h'}:${m * 15}');
    }
  }
  return myList;
}
