import 'package:get/get.dart';
import 'package:tugas1_11pplg2/Pages/footballplayer_pages.dart';
import 'package:tugas1_11pplg2/Pages/editplayer_page.dart';

class AppRoutes {
  static const calculatorPage = '/calculatorPage';
  static const footballPage = '/footballPage';
  static const editPlayerPage = '/footballPage/edit';

  static List<GetPage> pages = [
    GetPage(name: footballPage, page: () => FootballplayerPages()),
    GetPage(name: editPlayerPage, page: () => EditplayerPage()),
  ];
}
