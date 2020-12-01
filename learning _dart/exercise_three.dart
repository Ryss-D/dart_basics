//make a pyramid
void main() {
  print(buildPyramid('*', 5, true));
  print(buildPyramid('/', 4));
}

buildPyramid(String char, int height, [bool twoSides = false]) {
  String pyramid, space;
  pyramid = "";
  space = " ";
  if (twoSides) {
    for (int i = 0; i <= height; i++) {
      pyramid += "${space * (height - (i))}${char * i} ${char * i}";
      pyramid += '\n';
    }
  } else {
    for (int i = 0; i <= height; i++) {
      pyramid += "${space * (height - (i))}${char * i}";
      pyramid += '\n';
    }
  }
  return pyramid;
}
