import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ruang_event/pages/account.dart';
import 'package:ruang_event/pages/detailed_event.dart';
import 'package:ruang_event/pages/setting.dart';
import 'package:ruang_event/pages/univ.dart';
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

  final List konten = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
  ];

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
      child: ListView(
        children: <Widget>[
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
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            child: Text(_tgl['time'] + " WITA",
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gill Sans MT")),
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
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(5),
            child: const Text("What's Now",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
          SizedBox(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const DetailedEvent());
                    Navigator.push(context, route);
                  },
                  child: Card(
                    child: Column(children: [
                      Container(
                          width: 200,
                          height: 130,
                          // padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/ral.jpg",
                                  ),
                                  fit: BoxFit.cover))),
                      Container(
                        width: 200,
                        height: 60,
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(10),
                        child: const Text("Fluffy Boy",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Gill Sans MT")),
                      )
                    ]),
                  ),
                );
              },
              itemCount: konten.length,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(5),
            child: const Text("Popular Events",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
          SizedBox(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => const DetailedEvent());
                    Navigator.push(context, route);
                  },
                  child: Card(
                    child: Column(children: [
                      Container(
                          width: 200,
                          height: 130,
                          // padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/ral.jpg",
                                  ),
                                  fit: BoxFit.cover))),
                      Container(
                        width: 200,
                        height: 60,
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(10),
                        child: const Text("Fluffy Boy",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Gill Sans MT")),
                      )
                    ]),
                  ),
                );
              },
              itemCount: konten.length,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            child: const Text("Menu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ),
          Container(
              height: 120,
              child: GridView.count(
                crossAxisCount: 3,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => const AccountPage());
                      Navigator.push(context, route);
                    },
                    child: Container(
                        height: 200,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(20),
                        color: Colors.orange,
                        child: Column(
                          children: const [
                            Icon(Icons.person),
                            Text(
                              "Account",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Route route =
                          MaterialPageRoute(builder: (context) => UnivPage());
                      Navigator.push(context, route);
                    },
                    child: Container(
                        height: 200,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(20),
                        color: Colors.blue,
                        child: Column(
                          children: const [
                            Icon(Icons.event),
                            Text(
                              "Event Univ",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                  InkWell(
                    onTap: () {
                      Route route = MaterialPageRoute(
                          builder: (context) => const SettingPage());
                      Navigator.push(context, route);
                    },
                    child: Container(
                        height: 200,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(20),
                        color: Colors.purple,
                        child: Column(
                          children: const [
                            Icon(Icons.settings),
                            Text(
                              "Setting",
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )),
                  ),
                ],
              ))
        ],
      ),
    );
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
