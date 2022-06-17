import 'package:flutter/material.dart';
import 'detailed_event.dart';
/*
===============================================================================
Frame Name    : Setting Frame
-------------------------------------------------------------------------------
Handler       : Kadek Deva Pramana Putra
NIM           : 2015051071
Class         : 4A
Prodi         : PTI
-------------------------------------------------------------------------------
Note          :
1. [Yuda] ==> Selamat bekerja :)
===============================================================================
*/

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  static const String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: ListView(
          children: <Widget>[
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 20, bottom: 20),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: const [
                        Icon(
                          Icons.settings,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Settings'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                print('Settings');
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 20, bottom: 20),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(
                          Icons.sort_by_alpha,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Ukuran Font'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedEvent(),
                  ),
                );
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 20, bottom: 20),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(
                          Icons.dark_mode,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Mode (Gelap/Cerah)'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedEvent(),
                  ),
                );
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 20, bottom: 20),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Notifikasi (Hidup/Mati)'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedEvent(),
                  ),
                );
              },
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, top: 20, bottom: 20),
                child: Row(
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(Icons.delete),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Hapus Data Aplikasi'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailedEvent(),
                  ),
                );
              },
            ),
          ],
        ));
  }
}
