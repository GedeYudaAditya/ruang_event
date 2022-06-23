import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_event/screens/account.dart';
import 'package:ruang_event/screens/favorite_page.dart';
import 'package:ruang_event/screens/auth/login_page.dart';
import 'package:ruang_event/screens/home.dart';
import 'package:ruang_event/screens/main_menu.dart';
import 'package:ruang_event/screens/mbkm_page.dart';
import 'package:ruang_event/screens/my_event_page.dart';
import 'package:ruang_event/screens/setting.dart';
import 'package:ruang_event/screens/univ.dart';

import '../models/user.dart';
import '../providers/pages_data.dart';
import '../services/auth_service.dart';

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
  DrawerWidget({Key? key}) : super(key: key);

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users?>(context);
    Pages setNavbar = Provider.of<Pages>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(user, context),
          ListTile(
            leading: const Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            title: const Text("Home", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Route route =
              //     MaterialPageRoute(builder: (context) => const MainMenu());
              // Navigator.push(context, route);
              setNavbar.setSelectedNavbar(value: 2);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.favorite, color: Colors.white),
            title:
                const Text("Favorite", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Route route = MaterialPageRoute(
              //     builder: (context) => const FavoriteScreen());
              // Navigator.push(context, route);
              setNavbar.setSelectedNavbar(value: 1);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_balance, color: Colors.white),
            title: const Text("Univercity Events",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              // Route route =
              //     MaterialPageRoute(builder: (context) => UnivScreen());
              // Navigator.push(context, route);
              setNavbar.setSelectedNavbar(value: 0);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.emoji_flags, color: Colors.white),
            title:
                const Text("My Events", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Route route =
              //     MaterialPageRoute(builder: (context) => const MyEventPage());
              // Navigator.push(context, route);
              setNavbar.setSelectedNavbar(value: 3);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.share, color: Colors.white),
            title: const Text("MBKM Programs",
                style: TextStyle(color: Colors.white)),
            onTap: () {
              // Route route =
              //     MaterialPageRoute(builder: (context) => const MBKMPage());
              // Navigator.push(context, route);
              setNavbar.setSelectedNavbar(value: 4);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            title:
                const Text("Settings", style: TextStyle(color: Colors.white)),
            onTap: () {
              // Route route = MaterialPageRoute(
              //     builder: (context) => const SettingScreen());
              Navigator.pushNamed(context, SettingScreen.routeName);
            },
          ),
          const Divider(
              height: 1,
              thickness: 1,
              color: Color.fromARGB(200, 255, 255, 255)),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.white),
            title: const Text("Logout", style: TextStyle(color: Colors.white)),
            onTap: () async {
              // Route route =
              //     MaterialPageRoute(builder: (context) => LoginPage());
              // Navigator.push(context, route);
              // Navigator.pushNamed(context, LoginPage.routeName);
              await _auth.signOut();
            },
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader(Users? user, context) {
  String username = user!.username.toString();
  String email = user.email.toString();
  return UserAccountsDrawerHeader(
    onDetailsPressed: () {
      Navigator.pushNamed(context, AccountScreen.routeName);
    },
    currentAccountPicture: ClipOval(
      child: Image(
          image:
              NetworkImage('https://randomuser.me/api/portraits/women/37.jpg'),
          fit: BoxFit.cover),
    ),
    // otherAccountsPictures: [
    //   ClipOval(
    //     child: Image(image: AssetImage('images/ral.jpg'), fit: BoxFit.cover),
    //   ),
    //   ClipOval(
    //     child: Image(image: AssetImage('images/ral.jpg'), fit: BoxFit.cover),
    //   )
    // ],
    accountName: Text(username),
    accountEmail: Text(email),
  );
}
