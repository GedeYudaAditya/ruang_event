// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ruang_event/pages/edit_event_page.dart';

/*
===============================================================================
Frame Name    : My Event Frame
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
class MyEventPage extends StatefulWidget {
  const MyEventPage({Key? key}) : super(key: key);

  @override
  State<MyEventPage> createState() => _MyEventPageState();
}

class _MyEventPageState extends State<MyEventPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(5),
            child: const Text("My Event",
                style: TextStyle(
                    color: Colors.black,
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
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(5),
            child: const Text(
                "Berikut merupakan deretan event yang anda buat saat ini:",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                )),
          ),
          RaisedButton(
            child: const Text(
              "Tambah Event",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.orange,
            onPressed: () {
              Route route = MaterialPageRoute(
                  builder: (context) => const EditEventPage());
              Navigator.push(context, route);
            },
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(5),
            child: const Text("List:",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                )),
          ),
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Container(
                          height: 100,
                          width: 100,
                          // padding: const EdgeInsets.all(10),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/ral.jpg",
                                  ),
                                  fit: BoxFit.cover))),
                      Container(
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
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
