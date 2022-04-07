import 'package:flutter/material.dart';
/*
===============================================================================
Frame Name    : Detailed Event Frame
-------------------------------------------------------------------------------
Handler       : Gede Yuda Aditya
NIM           : 2015051003
Class         : 4A
Prodi         : PTI
-------------------------------------------------------------------------------
Note          :
1. [Yuda] ==> Selamat bekerja :)
===============================================================================
*/

class DetailedEvent extends StatelessWidget {
  const DetailedEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text(
            'This is detailed event..',
          ),
        ],
      ),
    );
  }
}
