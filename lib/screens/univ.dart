import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_event/models/universitas.dart';
import 'package:ruang_event/providers/univs_data.dart';
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

class UnivScreen extends StatelessWidget {
  const UnivScreen({Key? key}) : super(key: key);

  static const String routeName = '/univ';

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> universitas = Provider.of<Univs>(context).data;
    print(universitas.length);
    if (universitas.isNotEmpty) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
                color: const Color.fromARGB(255, 188, 192, 198),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                            'assets/images/' + universitas[index]["picture"]!,
                            height: 50,
                            width: 50),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          height: 60,
                          child: Text(
                            universitas[index]["nama"]!,
                            style: const TextStyle(fontSize: 20),
                          )),
                    ],
                  ),
                ));
          },
          itemCount: universitas.length,
        ),
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
