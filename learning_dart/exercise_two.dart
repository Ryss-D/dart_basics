void main() {
  print(numberOfSeconds(seconds: 15, minutes: 23, hours: 3));
}

numberOfSeconds({int seconds, int minutes, int hours}) {
  int totalSeconds = 0;
  totalSeconds += seconds;
  totalSeconds += minutes * 60;
  totalSeconds += hours * 3600;

  return (totalSeconds);
}
// should add contionals to avoid empty arguments
