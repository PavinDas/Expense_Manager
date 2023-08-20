import 'package:flutter/material.dart';
import 'package:money_management_app/screens/category/screen_category.dart';
import 'package:money_management_app/screens/home/widgets/bottom_navigation.dart';
import 'package:money_management_app/screens/transactions/screen_transaction.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  final _pages = const [
    ScreenTransaction(),
    ScreenCategory(),
  ];

  static ValueNotifier<int> selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('MONEY MANAGER'),
        centerTitle: true,
      ),
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndex,
          builder: (context, updatedIndex, child) {
            return _pages[updatedIndex];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndex.value == 0) {
            print('Add transaction');
          } else {
            print('Add category');
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
