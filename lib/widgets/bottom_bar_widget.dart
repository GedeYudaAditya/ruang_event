import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_event/providers/pages_data.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedNavbar = Provider.of<Pages>(context).selectedNavbar;
    Pages setNavbar = Provider.of<Pages>(context);

    void _changeSelectedNavBar(int index) {
      setState(() {
        _selectedNavbar = index;
        setNavbar.setSelectedNavbar(value: index);
        print(setNavbar.selectedNavbar);
      });
    }

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Event'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite'),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'My Event'),
        BottomNavigationBarItem(icon: Icon(Icons.group), label: 'MBKM'),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedNavbar,
      // backgroundColor: const Color.fromARGB(255, 13, 93, 158),
      selectedItemColor: Colors.black,
      // unselectedItemColor: Colors.white,
      showUnselectedLabels: false,
      onTap: _changeSelectedNavBar,
    );
  }
}
