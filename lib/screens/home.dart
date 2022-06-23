import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_event/providers/pages_data.dart';
import 'package:ruang_event/widgets/bottom_bar_widget.dart';

import '../widgets/slide_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  static const String routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = Provider.of<Pages>(context).pages;
    int _selectedNavbar = Provider.of<Pages>(context).selectedNavbar;
    Pages setNavbar = Provider.of<Pages>(context);

    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 207, 207, 207),
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: const Color.fromARGB(255, 13, 93, 158),
        ),
        floatingActionButton: keyboardIsOpened
            ? null
            : FloatingActionButton(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                onPressed: () {
                  setNavbar.setSelectedNavbar(value: 2);
                },
                tooltip: 'Home',
                child: const Icon(
                  Icons.home,
                  size: 35,
                ),
                elevation: 9.0,
              ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: DrawerWidget(),
        body: Consumer(
          builder: (context, value, child) => IndexedStack(
            index: _selectedNavbar,
            children: _pages,
          ),
        ),
        bottomNavigationBar: const BottomBarWidget());
  }
}
