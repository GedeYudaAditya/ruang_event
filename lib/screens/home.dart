import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_event/providers/pages_data.dart';
import 'package:ruang_event/widgets/bottom_bar_widget.dart';

import '../widgets/slide_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  static const String routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = Provider.of<Pages>(context).pages;
    int _selectedNavbar = Provider.of<Pages>(context).selectedNavbar;

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: const Color.fromARGB(255, 13, 93, 158),
        ),
        drawer: const DrawerWidget(),
        body: Consumer(
          builder: (context, value, child) => IndexedStack(
            index: _selectedNavbar,
            children: _pages,
          ),
        ),
        bottomNavigationBar: const BottomBarWidget());
  }
}
