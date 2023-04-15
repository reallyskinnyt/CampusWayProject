import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  int currentIndex;

  BottomNavigationBarWidget({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.orange,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 12),
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: (index) {
        setState(() {
          widget.currentIndex = index;
        });

        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/home');
            break;
          case 1:
            Navigator.pushNamed(context, '/search');
            break;
          case 2:
            Navigator.pushNamed(context, '/setting');
            break;
          case 3:
            Navigator.pushNamed(context, '/favourite');
            break;
        }
      },
      currentIndex: widget.currentIndex,
      items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.orange,
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.orange,
          icon: Icon(Icons.search),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.orange,
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.orange,
          icon: Icon(Icons.favorite),
          label: 'Favourite',
        ),
      ],
    );
  }
}
