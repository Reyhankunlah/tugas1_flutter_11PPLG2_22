import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugas1_11pplg2/Pages/calculator_pages.dart';
import 'package:tugas1_11pplg2/Pages/footballPlayer_pages.dart';
import 'package:tugas1_11pplg2/Pages/profile_page.dart';

class NavigationController extends GetxController {
  final RxInt index = 0.obs;

  // Simpan halaman dalam list; IndexedStack akan menjaga state tiap tab
  final pages = <Widget>[
    CalculatorPages(),
    ProfilePage(),
    FootballplayerPages(),
  ];

  void changeIndex(int i) => index.value = i;
}
