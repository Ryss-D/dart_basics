import 'package:flutter/material.dart';
import 'package:timer/state/nav_bar_state.dart';

class NavBarInheritedWidget extends InheritedWidget {
  NavBarStateState data; //data store all the info (arguments) from NavBar

  NavBarInheritedWidget({
    this.data,
    Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
