import 'package:flutter/material.dart';

class ThaiFlag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color: Colors.grey,
          child: Column(
            children: [
              BuildBox(
                flex: 1,
                color: Colors.red,
              ),
              BuildBox(
                flex: 1,
                color: Colors.grey,
              ),
              BuildBox(
                flex: 2,
                color: Colors.blue,
              ),
              BuildBox(
                flex: 1,
                color: Colors.grey,
              ),
              BuildBox(
                flex: 1,
                color: Colors.red,
              ),
            ],
          )),
    );
  }
}

class NorwayFlag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Colors.grey,
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                BuildBox(
                  flex: 6,
                  color: Colors.red,
                ),
                BuildBox(
                  flex: 1,
                  color: Colors.grey,
                ),
                BuildBox(
                  flex: 2,
                  color: Colors.blue,
                ),
                BuildBox(
                  flex: 1,
                  color: Colors.grey,
                ),
                BuildBox(
                  flex: 12,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: (Row(
              children: [
                BuildBox(
                  flex: 7,
                  color: Colors.grey,
                ),
                BuildBox(
                  flex: 2,
                  color: Colors.blue,
                ),
                BuildBox(
                  flex: 13,
                  color: Colors.grey,
                ),
              ],
            )),
          ),
          Expanded(
              flex: 2,
              child: (Row(
                children: [
                  BuildBox(flex: 1, color: Colors.blue),
                ],
              ))),
          Expanded(
            flex: 1,
            child: (Row(
              children: [
                BuildBox(
                  flex: 7,
                  color: Colors.grey,
                ),
                BuildBox(
                  flex: 2,
                  color: Colors.blue,
                ),
                BuildBox(
                  flex: 13,
                  color: Colors.grey,
                ),
              ],
            )),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                BuildBox(
                  flex: 6,
                  color: Colors.red,
                ),
                BuildBox(
                  flex: 1,
                  color: Colors.grey,
                ),
                BuildBox(
                  flex: 2,
                  color: Colors.blue,
                ),
                BuildBox(
                  flex: 1,
                  color: Colors.grey,
                ),
                BuildBox(
                  flex: 12,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class BuildBox extends StatelessWidget {
  final MaterialColor color;
  final int flex;

  const BuildBox({Key key, this.color, this.flex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: color,
      ),
    );
  }
}
