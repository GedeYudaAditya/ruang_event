import 'package:flutter/material.dart';
import 'package:ruang_event/screens/detailed_event.dart';
/*
===============================================================================
Frame Name    : MBKM Frame
-------------------------------------------------------------------------------
Handler       : Made Edi Irawan
NIM           : 1915051066
Class         : 4A
Prodi         : PTI
-------------------------------------------------------------------------------
Note          :
1. [Yuda] ==> Selamat bekerja :)
2. [Edi]  ==> Maaf masih kurang sesuai :(
===============================================================================
*/

class MBKMPage extends StatelessWidget {
  const MBKMPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Center(
                child: Image.network(
                    'https://rmol.id/images/berita/normal/2021/10/443463_10520406102021_logo-kampus-merdeka.jpg')),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Program Merdeka Belajar Kampus Merdeka ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(
            height: 12,
            thickness: 4,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Kamu bisa melihat informasi terkait program magang bersertifikat yang ditawarkan oleh Kemendikbudristek : ',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 437,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Center(
                    child: Container(
                      width: 390,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child: Column(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, DetailedEventScreen.routeName);
                            },
                            child: Row(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(11), // Image border
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(
                                        48), // Image radius
                                    child: Image.network(
                                        'https://www.ibik.ac.id/wp-content/uploads/2021/07/WhatsApp-Image-2021-07-26-at-15.47.19.jpeg',
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 5),
                                      child: Row(children: const <Widget>[
                                        Text(
                                          'Bangkit by Google, Goto, Traveloka',
                                          textAlign: TextAlign.justify,
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 17,
                                        ),
                                      ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 5),
                                      child: Row(children: const <Widget>[
                                        SizedBox(
                                            width: 240,
                                            child: Padding(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet feugiat suscipit tempor feugiat eget vel auctor amet. In donec faucibus amet turpis tempor pellentesque. Facilisi pulvinar faucibus et tellus, viverra consectetur neque purus. At elit eu diam.',
                                                textAlign: TextAlign.justify,
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(fontSize: 11),
                                              ),
                                            )),
                                      ]),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 12,
            ),
          ),
        ],
      ),
    );
  }
}
