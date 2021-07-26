import 'package:flutter/material.dart';
import 'package:timer/screens/options_screen.dart';
import 'package:timer/screens/stopwatch_screen_.dart';
import 'package:timer/screens/timer_screen.dart';

class BottomNavBar extends StatefulWidget {
  final int index;
  final Function callback;
  const BottomNavBar({
    Key key,
    this.index,
    this.callback,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    _BuildNavBarItem(Icon icon, String label) {
      return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(5.0),
          child: icon,
        ),
        label: label,
      );
    }

    return BottomNavigationBar(
        elevation: 0,
        currentIndex: widget.index,
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
          widget.callback(ind);

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
                  builder: (context) => OptionsScreen(
                    screenIndex: ind,
                    setIndexCallback: widget.callback,
                  ),
                ),
              ); // thats just another way to handle navigation
              break;
            default:
              Navigator.of(context)
                  .pushReplacementNamed(StopwatchScreen.routeName);
          }
        });
  }
}
