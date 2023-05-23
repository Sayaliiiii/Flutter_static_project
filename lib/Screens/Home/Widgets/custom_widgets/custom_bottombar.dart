import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(
            Icons.home,
            color: Color.fromRGBO(92, 92, 92, 1),
          ),
        ),
        BottomNavigationBarItem(
            label: 'settings',
            icon: Icon(Icons.settings, color: Color.fromRGBO(92, 92, 92, 1))),
        BottomNavigationBarItem(
            label: 'search',
            icon: Icon(Icons.search, color: Color.fromRGBO(92, 92, 92, 1)))
      ],
      currentIndex: currentIndex,
      onTap: (int index) {
        selectedItemColor:
        Color.fromRGBO(227, 109, 166, 1);
        setState(() {
          currentIndex = index;
        });
      },
    );
  }
}
