abstract class Action {}

class Convert extends Action {}

class UpdateKM extends Action {
  String? payload;

  UpdateKM(
    this.payload,
  );
}
