// ignore_for_file: deprecated_member_use

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
class DetailedEvent extends StatefulWidget {
  const DetailedEvent({Key? key}) : super(key: key);

  @override
  State<DetailedEvent> createState() => _DetailedEventState();
}

class _DetailedEventState extends State<DetailedEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                height: 200,
                // padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "images/ral.jpg",
                        ),
                        fit: BoxFit.cover))),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text("Judul Event",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  )),
            ),
            const Divider(
              height: 2.0,
              thickness: 1.0,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Publisher",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  Text("Date and time",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ClipOval(
                    child: Image(
                        height: 70,
                        image: AssetImage('images/ral.jpg'),
                        fit: BoxFit.cover),
                  ),
                  Container(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SizedBox(
                          width: 100,
                          child: Text("Kelompok 2",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              )),
                        ),
                        Divider(
                          height: 2.0,
                          thickness: 1.0,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 100,
                          child: Text("Universitas Pendidikan Ganesha",
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const VerticalDivider(
                    width: 2.0,
                    thickness: 1.0,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SizedBox(
                          width: 100,
                          child: Text("20 Maret 2021",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              )),
                        ),
                        Divider(
                          height: 2.0,
                          thickness: 1.0,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 100,
                          child: Text("10.00 AM - 12.00 AM",
                              overflow: TextOverflow.clip,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.date_range,
                    size: 90.0,
                  ),
                ],
              ),
            ),
            const Text("Contact",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.link),
                Text("http//:kelompok2.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    )),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.phone),
                      Text("087764324254",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.phone),
                      Text("087764324254",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.email),
                      Text("kelompok2@gmail.com",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 2.0,
              thickness: 1.0,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    child: const Text(
                      "Hubungi",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: const Text(
                      "Daftar",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.orange,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: true, onChanged: (bool) {}),
                Text("Tambakan ke favorit",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                    ))
              ],
            ),
            Divider(
              height: 2.0,
              thickness: 1.0,
              color: Colors.black,
            ),
            Column(
              children: [
                Container(
                  child: Text("Deskripsi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                ),
                Container(
                  child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt a vestibulum at. Auctor ac sit ut blandit et phasellus. Varius eget ut interdum felis cras tellus quam et eget. Diam facilisi arcu rhoncus, enim, netus hendrerit proin quam. Consectetur et sollicitudin eget nunc morbi. Cursus arcu amet, dignissim sed placerat sit ut sed. Sed mauris, eget sed eget. Ullamcorper elementum gravida ac tellus nulla commodo, quis nulla ullamcorper. Consequat et adipiscing nullam amet id. Felis ut sagittis, amet porttitor at viverra. Ornare vel platea a at mauris pellentesque aliquet sed facilisi",
                      textAlign: TextAlign.justify,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
