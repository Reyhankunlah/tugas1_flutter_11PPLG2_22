import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugas1_11pplg2/Pages/calculator_pages.dart';
import 'package:tugas1_11pplg2/Pages/footballPlayer_pages.dart';
import 'package:tugas1_11pplg2/Pages/profile_page.dart';

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> pages = [
    CalculatorPages(),
    ProfilePage(),
    FootballplayerPages(),
  ];

  void changeIndex(int i) => selectedIndex.value = i;
}
