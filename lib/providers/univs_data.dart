import 'package:flutter/material.dart';
import 'package:ruang_event/models/universitas.dart';

class Univs with ChangeNotifier {
  List<Map<String, String>> _data = [
    // {
    //   "nama": "Universitas Pendidikan Ganesha",
    //   "picture": "undiksha.png",
    //   "location": "Singaraja"
    // },
    // {
    //   "nama": "Universitas Brawijaya",
    //   "picture": "brawijaya.png",
    //   "location": "Unknown"
    // },
    // {
    //   "nama": "Universitas Padjajaran",
    //   "picture": "padjajaran.png",
    //   "location": "Unknown"
    // },
    // {
    //   "nama": "Universitas Gadjah Mada",
    //   "picture": "ugm.png",
    //   "location": "Unknown"
    // },
  ];

  List<Map<String, String>> get data {
    return _data;
  }

  void addUniversitas(Universitas univ) {
    final object = <String, String>{
      // 'id': univ.id,
      'nama': univ.namaUniv!,
      'picture': univ.picture!,
      'location': univ.location!
    };
    _data.add(object);
    notifyListeners();
  }
}
