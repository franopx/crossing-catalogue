

import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabSelected;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTabSelected,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.question_mark),
          label: 'Quiz',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pets),
          label: 'Villagers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Collection',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'About Us',
        ),
      ],
    );
  }
}