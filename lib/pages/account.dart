import 'package:flutter/material.dart';
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

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'This is account',
          ),
        ],
      ),
    );
  }
}
