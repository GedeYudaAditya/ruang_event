import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';
import 'detailed_event.dart';

/*
===============================================================================
Frame Name    : Account Frame
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

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  static const String routeName = '/account';

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users?>(context);
    String username = user!.username.toString();
    String email = user.email.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(150)),
              child: Image.network(
                  'https://randomuser.me/api/portraits/women/37.jpg',
                  width: 150,
                  height: 150),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Nama',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'TrajanPro_Bold',
                    ),
                  ),
                  Text(
                    username,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'TrajanPro_Bold',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                        Text(
                          email,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Universitas Asal',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                        Text(
                          'Universitas Pendidikan Ganesha',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Sebagai',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                        Text(
                          'Admin',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Nomor Telp',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                        Text(
                          '081805345693',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Nomor Whatsapp',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                        Text(
                          '081805345693',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Instagram',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                        Text(
                          '@kelompok2',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Website',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                        Text(
                          'http://kelompok2.com',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'TrajanPro_Bold',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
