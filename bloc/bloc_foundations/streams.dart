Stream<int> boatStream() async* {
  //async* means that generates async data
  for (int i = 1; i <= 10; i++) {
    print("Sent boat no." + i.toString());
    // await means that wait for this asyncronous process
    await Future.delayed(Duration(seconds: 2));
    //yield means send the value to stream
    yield i;
  }
}

void main(List<String> args) async {
  // asyncs means that cosume async data
  Stream<int> stream = boatStream();

  stream.listen((receiveData) {
    print("Received boat no." + receiveData.toString());
  });
}
