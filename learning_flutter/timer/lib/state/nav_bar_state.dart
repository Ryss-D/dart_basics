import 'package:flutter/material.dart';

import 'nav_bar_inherited_widget.dart';

class NavBarState extends StatefulWidget {
  final Widget child;

  const NavBarState({Key key, this.child}) : super(key: key);

  static NavBarStateState of(BuildContext context) {
    // statis means samne value for every instance of this class
    return context
        .dependOnInheritedWidgetOfExactType<NavBarInheritedWidget>()
        .data;
  }

  @override
  NavBarStateState createState() => NavBarStateState();
}

class NavBarStateState extends State<NavBarState> {
  int _index = 0;

  int get index => _index;

  void setIndex(index) {
    // this is a setter
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NavBarInheritedWidget(
      child: widget.child,
      data: this,
    );
  }
}
