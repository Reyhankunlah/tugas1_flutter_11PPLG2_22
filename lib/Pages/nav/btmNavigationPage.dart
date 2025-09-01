// lib/nav/main_nav_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_11pplg2/Controllers/nav/navigation_controller.dart';

class Btmnavigationpage extends StatelessWidget {
  Btmnavigationpage({super.key});

  NavigationController navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: navigationController.selectedIndex.value,
          children: navigationController.pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navigationController.selectedIndex.value,
          onTap: navigationController.changeIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Calc'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer),
              label: 'Squad',
            ),
          ],
        ),
      ),
    );
  }
}
