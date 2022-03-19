import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.ac_unit,
          ),
          activeIcon: Icon(Icons.ac_unit, color: Colors.blueAccent)),
      BottomNavigationBarItem(
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
