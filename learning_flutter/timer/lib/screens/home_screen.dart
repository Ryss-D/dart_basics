import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _screenIndex = 0;

  void setIndex(index) {
    setState(() {
      _screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Center(
        child:
            Text('First Screen', style: Theme.of(context).textTheme.headline1),
      ),
      Center(
        child:
            Text('Second Screen', style: Theme.of(context).textTheme.headline1),
      ),
      Center(
        child:
            Text('Third Screen', style: Theme.of(context).textTheme.headline1),
      ),
    ];
    return Scaffold(
      body: screens[_screenIndex],
      bottomNavigationBar: BottomNavBar(
        index: _screenIndex,
        callback: setIndex,
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  final int index;
  final Function callback;
  const BottomNavBar({Key key, this.index, this.callback}) : super(key: key);

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
        });
  }
}
