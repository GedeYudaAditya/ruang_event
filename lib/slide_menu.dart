import 'package:flutter/material.dart';

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
            leading: Icon(Icons.home_filled),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorite"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.account_balance),
            title: Text("Univercity Events"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.emoji_flags),
            title: Text("My Events"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("MBKM Programs"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          Divider(height: 1, thickness: 1),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {},
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
