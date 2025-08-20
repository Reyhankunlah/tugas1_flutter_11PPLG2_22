// lib/nav/main_nav_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_11pplg2/Controllers/nav/navigation_controller.dart';

class Btmnavigationpage extends StatelessWidget {
  Btmnavigationpage({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(NavigationController());

    return Obx(() {
      return Scaffold(
        body: IndexedStack(index: c.index.value, children: c.pages),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: c.index.value,
          onTap: c.changeIndex,
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
      );
    });
  }
}
