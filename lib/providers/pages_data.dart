import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_event/providers/univs_data.dart';

import '../screens/favorite_page.dart';
import '../screens/main_menu.dart';
import '../screens/mbkm_page.dart';
import '../screens/my_event_page.dart';
import '../screens/univ.dart';

class Pages with ChangeNotifier {
  final List<Widget> _pages = [
    ChangeNotifierProvider(create: (context) => Univs(), child: UnivScreen()),
    const FavoriteScreen(),
    const MainMenu(),
    const MyEventPage(),
    const MBKMPage(),
  ];

  int _selectedNavbar = 2;

  List<Widget> get pages {
    return _pages;
  }

  int get selectedNavbar {
    return _selectedNavbar;
  }

  void setSelectedNavbar({required int value}) {
    _selectedNavbar = value;
    notifyListeners();
  }
}
