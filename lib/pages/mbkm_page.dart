import 'package:flutter/material.dart';
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
===============================================================================
*/

class MBKMPage extends StatelessWidget {
  const MBKMPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Center(
              child: Image.network(
                  'https://hariannusantara.com/wp-content/uploads/2019/06/gambar-pemandangan-pegunungan1.jpg')),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            'Program Merdeka Belajar Kampus Merdeka ',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          height: 12,
          thickness: 4,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            'Kamu bisa melihat informasi terkait program magam bersertifikat yang ditawarkan oleh Kemendikbudristek : ',
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                child: Center(
                  child: Container(
                    width: 395,
                    height: 97,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Column(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            print('Berhasil');
                          },
                          child: Row(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(11), // Image border
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(48), // Image radius
                                  child: Image.network(
                                      'http://cdn130.picsart.com/259803787000202.jpg',
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(left: 5, top: 5),
                                    child: Row(children: <Widget>[
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
                                    padding: EdgeInsets.only(left: 5, top: 5),
                                    child: Row(children: <Widget>[
                                      Container(
                                          width: 250,
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
    );
  }
}
