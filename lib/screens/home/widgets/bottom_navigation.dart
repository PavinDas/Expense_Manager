import 'package:flutter/material.dart';
import 'package:money_management_app/screens/home/screen_home.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndex,
      builder: (context, updatedIndex, child) {
        return BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          currentIndex: updatedIndex,
          onTap: (newIndex) {
            ScreenHome.selectedIndex.value = newIndex;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
          ],
        );
      },
    );
  }
}
