import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //tcenter only "center" in the main axes of contanier ige for columns horizontal, rows vertical
      child: Container(
        color: Colors.black,
        child: Column(
          //coilumn by default take the maximum size he can in y and minimum on x (Reverse for row)
          // mainAxisSize: MainAxisSize.min, thats a way to fix it
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // by default is MainAxisAlignment.start
          crossAxisAlignment: CrossAxisAlignment
              .stretch, // by default is CrossAxisAlignmente.start
          children: [
            //children instead child because we can have more than one
            BuildBox(
              color: Colors.blue,
            ),
            Container(
              height: 100,
              // if we dont give a height (a dimension) and use the CorssAxissAligment in two dies it will return a error
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // this row will  be using all the space they can
                children: [
                  BuildBox(
                    color: Colors.red,
                  ),
                  BuildBox(
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
            BuildBox(
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}

class BuildBox extends StatelessWidget {
  final MaterialColor color;

  const BuildBox({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        width: 100,
        color: color,
      ),
    );
  }
}
