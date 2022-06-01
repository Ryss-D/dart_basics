void main() {
  int time = 3721;
  int hours = time ~/ 3600;
  dynamic timeLeft = time % 3600;
  var minutes = timeLeft ~/ 60;
  var seconds = timeLeft % 60;

  print("The left time is $hours hr, $minutes mins, $seconds s.");
}
