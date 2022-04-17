import 'package:flutter/material.dart';
import 'package:ruang_event/pages/detailed_event.dart';
import 'package:ruang_event/pages/edit_event_page.dart';
import 'package:ruang_event/pages/favorite_page.dart';
import 'package:ruang_event/pages/login/login_page.dart';
import 'package:ruang_event/pages/mbkm_page.dart';
import 'package:ruang_event/pages/my_event_page.dart';
import 'package:ruang_event/pages/search_page.dart';
import 'package:ruang_event/pages/univ.dart';
import 'package:ruang_event/pages/register.dart';
import 'package:ruang_event/slide_menu.dart';
import 'package:ruang_event/pages/main_menu.dart';

/*
===============================================================================
Frame Name    : Core Frame App
-------------------------------------------------------------------------------
Team Handler  : Gede Yuda Aditya              [ 2015051003 ] L
                Alfiansyah                    [ 2015051023 ]
                Putri Eodytha Aisya Purnomo   [ 2015051046 ]
                Kadek Deva Pramana Putra      [ 2015051071 ]
                Made Edi Irawan               [ 1915051066 ]

Class         : 4A
Prodi         : PTI
-------------------------------------------------------------------------------
Note & Rule   :
1. [Yuda] ==> Jangan ubah bagian code file ini tanpa konfirmasi ke [Yuda].
2. [Yuda] ==> Tidak boleh mengusik frame milik orang lain (kecuali tindakan
              diperbolehkan oleh yang punya).
3. [Yuda] ==> Konfirmasi jika ingin melakukan Marge atau penggabungan.
4. [Yuda] ==> Saling bantu ketika ada kesulitan.
===============================================================================
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruang Event',
      theme: ThemeData(
          primaryColor: Colors.blue, primaryColorDark: Colors.deepPurple),
      home: const MyHomePage(title: 'Ruang Event'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedNavbar = 2;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  static final List<Widget> _pages = <Widget>[
    UnivPage(),
    const FavoritePage(),
    const MainMenu(),
    const MyEventPage(),
    const MBKMPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(255, 13, 93, 158),
      ),
      drawer: const DrawerWidget(),
      body: IndexedStack(
        index: _selectedNavbar,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.event), label: 'Event'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'My Event'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'MBKM'),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedNavbar,
        backgroundColor: const Color.fromARGB(255, 13, 93, 158),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: false,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
