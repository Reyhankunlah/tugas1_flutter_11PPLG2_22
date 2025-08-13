import 'package:get/route_manager.dart';
import 'package:tugas1_11pplg2/Pages/calculator_pages.dart';
import 'package:tugas1_11pplg2/Pages/editplayer_page.dart';
import 'package:tugas1_11pplg2/Pages/footballPlayer_pages.dart';
import 'package:tugas1_11pplg2/Routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculatorPage, page: () => CalculatorPages()),
    GetPage(name: AppRoutes.footballPage, page: () => FootballplayerPages()),
    GetPage(name: AppRoutes.editPlayerPage, page: () => EditplayerPage()),
  ];
}
