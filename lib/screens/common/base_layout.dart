// provide layout to the application such that you can have all the other pages inside of it
import 'package:flutter/material.dart';

import '../modules/dashboard/dashboard.dart';
import '../modules/history/history.dart';
import '../modules/settings/settings.dart';

class BaseLayoutScreeen extends StatefulWidget {
  const BaseLayoutScreeen({super.key});

  @override
  State<BaseLayoutScreeen> createState() => _BaseLayoutScreeenState();
}

class _BaseLayoutScreeenState extends State<BaseLayoutScreeen> {
  int _selectedPageIndex = 0;

  final _pages = [
    Dashboard(),
    const History(),
    const Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
