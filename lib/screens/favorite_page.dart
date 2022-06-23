import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:ruang_event/screens/detailed_event.dart';
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
2. [Edi]  ==> Maaf masih kurang sesuai :(
===============================================================================
*/

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  static const String routeName = '/favorite';

  @override
  State<FavoriteScreen> createState() => _FavoritePage();
}

class _FavoritePage extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue = 'All';
    List<String> items = [
      'All',
      'Date',
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(right: 11, top: 1),
            child: Text(
              'Favorite Event List',
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
          Row(children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      height: 40,
                      width: 200,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Search",
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    CustomDropdownButton2(
                      hint: selectedValue,
                      value: selectedValue,
                      dropdownItems: items,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    )
                  ],
                ))
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Text(
              'Berikut merupakan deretan event favorit yang anda pilih saat ini : ',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Text(
              'MBKM Event',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 304,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  child: Center(
                    child: Container(
                      width: 390,
                      padding: const EdgeInsets.all(5),
                      // height: 110,
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
                                        'http://cdn130.picsart.com/259803787000202.jpg',
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
                                      child: Row(children: <Widget>[
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                139,
                                            child: const Padding(
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
