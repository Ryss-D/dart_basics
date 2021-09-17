abstract class Action {}

class Convert extends Action {}

class UpdateKM extends Action {
  String? payload;

  UpdateKM(
    this.payload,
  );
}

class UpdateKMCleaned extends Action {
  String payload;

  UpdateKMCleaned(
    this.payload,
  );
}

class UpdateMiles extends Action {
  String payload;

  UpdateMiles(this.payload);
}
