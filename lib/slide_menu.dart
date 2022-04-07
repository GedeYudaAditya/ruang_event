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
          _drawerItem(
              icon: Icons.folder,
              text: 'My Files',
              onTap: () => print('Tap My Files')),
          _drawerItem(
              icon: Icons.group,
              text: 'Shared with me',
              onTap: () => print('Tap Shared menu')),
          _drawerItem(
              icon: Icons.access_time,
              text: 'Recent',
              onTap: () => print('Tap Recent menu')),
          _drawerItem(
              icon: Icons.delete,
              text: 'Trash',
              onTap: () => print('Tap Trash menu')),
          const Divider(height: 25, thickness: 1),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(
              icon: Icons.bookmark,
              text: 'Family',
              onTap: () => print('Tap Family menu')),
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

Widget _drawerItem(
    {IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
