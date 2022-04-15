import 'package:flutter/material.dart';
/*
===============================================================================
Frame Name    : Edit Event Frame
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

class EditEventPage extends StatefulWidget {
  const EditEventPage({Key? key}) : super(key: key);

  @override
  State<EditEventPage> createState() => _EditEventPageState();
}

class _EditEventPageState extends State<EditEventPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 10),
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
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              height: 200,
              // padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "images/ral.jpg",
                      ),
                      fit: BoxFit.cover))),
          Column(
            children: [
              Container(
                child: Text("Deskripsi",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Text(
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
    );
  }
}
