import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Layout(),
      ),
    );
  }
}

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // safe area avoid the buttons and top of screen
      //child: Center(
      // it will not put the text in the center because we have the all container as child
      child: Column(
        // columns allow us place one windget or things one on top of the other
        children: [
          Expanded(
            // expanded tell to containers take all the space they can while inside the column
            flex: 1,
            // by default flex = 1 it means all "boxes" take the same spaces
            child: Container(
              alignment: Alignment
                  .topCenter, // alignment extend alignmentGeometry (AlignmentGeometry is a abstract class)
              // height: double.infinity,
              // width: double.infinity,
              // doble.infinity is a fancy way to pass a big really big number on dart
              // or we cam hardcode and give a specific value (keep it will no autoshape the child inside)
              color: Colors.deepPurple,
              child: Center(
                child: Text('Hello, World',
                    style: TextStyle(
                      fontSize: 50,
                    )),
              ), // when we use child the container or "thing contained" will use the minimun shape it can
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              // container use the maxim space he can but if it is on a column it will take the minimum he can
              height: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
