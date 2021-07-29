import 'package:flutter/material.dart';

import 'nav_bar_state.dart';

class NavBarInheritedWidget extends InheritedWidget {
  NavBarStateState data; //data store all the info (arguments) from NavBar

  NavBarInheritedWidget({
    this.data,
    Widget child,
  }) : super(
            child:
                child); // super is the parent class or the acces of the parent class

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) =>
      true; // that means no matter what value you get just rebuild everythibng
}
