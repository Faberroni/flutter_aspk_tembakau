import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) => setState(() => currentIndex = index),
      items: const [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.ac_unit,
          ),
          label: 'Index 0',
          activeIcon: Icon(Icons.ac_unit, color: Colors.blueAccent)),
      BottomNavigationBarItem(
          label: 'index 2',
          icon: Icon(
            Icons.account_circle,
          ),
          activeIcon: Icon(
            Icons.account_circle,
            color: Colors.blueAccent,
          )),
    ]);
  }
}
