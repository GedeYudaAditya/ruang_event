import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
//import 'package:flutter/foundation.dart';
/*
===============================================================================
Frame Name    : Main Menu Frame
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

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  late Map _tgl;

  @override
  void initState() {
    _tgl = _formatDateTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                child: Text(_tgl['day'],
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Gill Sans MT")),
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(_tgl['numday'],
                        style: const TextStyle(
                            color: Colors.blue,
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Gill Sans MT")),
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Text(_tgl['mounth'],
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Gill Sans MT")),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 1),
                          child: Text(_tgl['year'],
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Gill Sans MT")),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: Text(_tgl['time'] + " WITA",
                    style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Gill Sans MT")),
              ),
            ],
          ),
          const Divider(
            height: 2.0,
            thickness: 1.0,
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: const TextField(
              decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)))),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const Text('''Lorem Ipsum adalah contoh teks atau ...''',
                style: TextStyle(fontSize: 16)),
          ),
        ]));
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final Map formattedDateTime = _formatDateTime(now);
    setState(() {
      _tgl = formattedDateTime;
    });
  }

  Map _formatDateTime(DateTime dateTime) {
    Map dates = {
      'day': DateFormat('EEEE').format(dateTime),
      'numday': DateFormat('d').format(dateTime),
      'mounth': DateFormat('MMM').format(dateTime),
      'year': DateFormat('y').format(dateTime),
      'time': DateFormat('HH:mm:ss').format(dateTime)
    };
    return dates;
  }
}
