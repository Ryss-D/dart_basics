class AppState {
  late String km;
  late String miles;

  AppState({
    required this.km,
    required this.miles,
  });

  AppState.copyWith({required AppState prev, String? km, String? miles}) {
    this.km = km ?? prev.km;
    this.miles = miles ?? prev.miles;
  }

  AppState.initial() {
    this.km = "0";
    this.miles = "0";
  }
}
