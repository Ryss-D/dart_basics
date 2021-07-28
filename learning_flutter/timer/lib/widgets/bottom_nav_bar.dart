import 'package:flutter/material.dart';

import '../screens/options_screen.dart';
import '../screens/stopwatch_screen.dart';
import '../screens/timer_screen.dart';
import '../state/nav_bar_state.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index;

  @override
  void didChangeDependecies() {
    super.didChangeDependencies();
    NavBarStateState data = NavBarState.of(context);
    index = data.index;
  }

  @override
  Widget build(BuildContext context) {
    _BuildNavBarItem(Icon icon, String title) {
      return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(5.0),
          child: icon,
        ),
        label: title,
      );
    }

    return BottomNavigationBar(
        elevation: 0,
        currentIndex: index,
        unselectedFontSize: 15,
        selectedFontSize: 16,
        unselectedItemColor: Theme.of(context).accentColor,
        backgroundColor: Theme.of(context).backgroundColor,
        items: <BottomNavigationBarItem>[
          _BuildNavBarItem(
            Icon(Icons.timer),
            'Stopwatch',
          ),
          _BuildNavBarItem(
            Icon(Icons.slow_motion_video),
            'Timer',
          ),
          _BuildNavBarItem(
            Icon(Icons.settings),
            'Settings',
          )
        ],
        onTap: (ind) {
          //ind its the default index on nav bar and is referenced to list
          NavBarState.of(context).setIndex(ind);

          switch (ind) {
            case 0:
              Navigator.of(context)
                  .pushReplacementNamed(StopwatchScreen.routeName);
              break;
            case 1:
              Navigator.of(context).pushReplacementNamed(TimerScreen.routeName);
              //Navigator.of(context).pushNamed(TimerScreen.routeName); the difference between this tow navegations is that pushNamed will save the "historyc" of all pages created
              // then you can go back pessin back, but with pushReplacemntName the pressing back you will close the app
              break;
            case 2:
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => OptionsScreen(),
                ),
              ); // thats just another way to handle navigation
              break;
            default:
              Navigator.of(context)
                  .pushReplacementNamed(StopwatchScreen.routeName);
              break;
          }
        });
  }
}
