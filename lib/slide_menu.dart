import 'package:flutter/material.dart';
import 'package:ruang_event/pages/favorite_page.dart';
import 'package:ruang_event/pages/login/login_page.dart';
import 'package:ruang_event/pages/main_menu.dart';
import 'package:ruang_event/pages/mbkm_page.dart';
import 'package:ruang_event/pages/my_event_page.dart';
import 'package:ruang_event/pages/setting.dart';
import 'package:ruang_event/pages/univ.dart';

/*
===============================================================================
Frame Name    : Slider Menu Frame
-------------------------------------------------------------------------------
Handler       : Alfiansyah
NIM           : 2015051023
Class         : 4A
Prodi         : PTI
-------------------------------------------------------------------------------
Note          :
1. [Yuda] ==> file ini sengaja di tempatkan berada bersama dengan main.dart
2. [Yuda] ==> Jika ingin membuat frame baru usahakan di taruh di dalam folder
              pages.
3. [Yuda] ==> nama file harus di dengan huruf kecil, jika memiliki spasi gunakan
              underscore (_).
4. [Yuda] ==> Ingat di push ke branch terlebih dahulu, jika sudah fix baru
              meminta untuk di gabung ke [Yuda]
5. [Yuda] ==> Usahakan isi identitas pada file baru yang di buat. Format seperti
              yang kamu lihat seperti ini.
6. [Yuda] ==> Selamat bekerja :)
===============================================================================
*/

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          ListTile(
            leading: const Icon(Icons.home_filled),
            title: const Text("Home"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const MainMenu());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text("Favorite"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const FavoritePage());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_balance),
            title: const Text("Univercity Events"),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => UnivPage());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.emoji_flags),
            title: const Text("My Events"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const MyEventPage());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("MBKM Programs"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const MBKMPage());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => const SettingPage());
              Navigator.push(context, route);
            },
          ),
          const Divider(height: 1, thickness: 1),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text("Logout"),
            onTap: () {
              Route route =
                  MaterialPageRoute(builder: (context) => LoginPage());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return const UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('images/ral.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('images/ral.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: AssetImage('images/ral.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('Belajar Flutter'),
    accountEmail: Text('hallo@belajarflutter.com'),
  );
}
