import 'package:flutter/material.dart';
/*
===============================================================================
Frame Name    : Favorite Frame
-------------------------------------------------------------------------------
Handler       : Made Edi Irawan
NIM           : 1915051066
Class         : 4A
Prodi         : PTI
-------------------------------------------------------------------------------
Note          :
1. [Yuda] ==> Selamat bekerja :)
===============================================================================
*/

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            "It's My Favorite",
          ),
        ],
      ),
    );
  }
}
