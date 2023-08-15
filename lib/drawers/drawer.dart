import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",tooltip: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",tooltip: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout",tooltip: "Logout"),
      ],
    );
  }
}