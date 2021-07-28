import 'package:flutter/material.dart';

import 'nav_bar_state.dart';

class NavBarInheritedWidget extends InheritedWidget {
  NavBarStateState data; //data store all the info (arguments) from NavBar

  NavBarInheritedWidget({
    this.data,
    Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
