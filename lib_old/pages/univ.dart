import 'package:flutter/material.dart';
/*
===============================================================================
Frame Name    : Univ Frame
-------------------------------------------------------------------------------
Handler       : Putri Eodytha Aisya Purnomo
NIM           : 2015051046
Class         : 4A
Prodi         : PTI
-------------------------------------------------------------------------------
Note          :
1. [Yuda] ==> Jika ingin membuat frame baru usahakan di taruh di dalam folder
              pages.
2. [Yuda] ==> nama file harus di dengan huruf kecil, jika memiliki spasi gunakan
              underscore (_).
3. [Yuda] ==> Ingat di push ke branch terlebih dahulu, jika sudah fix baru
              meminta untuk di gabung ke [Yuda]
4. [Yuda] ==> Usahakan isi identitas pada file baru yang di buat. Format seperti
              yang kamu lihat seperti ini.
5. [Yuda] ==> Selamat bekerja :)
===============================================================================
*/

class UnivPage extends StatelessWidget {
  UnivPage({Key? key}) : super(key: key);
  var Universitas = {
    "name": [
      "Universitas Pendidikan Ganesha",
      "Universitas Brawijaya",
      "Universitas Padjajaran ",
      "Universitas Gadjah Mada",
    ],
    "pic": ["undiksha.png", "padjajaran.png", "brawijaya.png", "ugm.png"]
  };
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              color: Color.fromARGB(255, 188, 192, 198),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Image.asset(
                          'assets/images/' + Universitas["pic"]![index],
                          height: 50,
                          width: 50),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        height: 60,
                        child: Text(
                          Universitas["name"]![index],
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),
              ));
        },
        itemCount: Universitas["name"]!.length,
      ),
    );
  }
}
