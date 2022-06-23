import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_event/models/user.dart';
import 'package:ruang_event/screens/auth/auth.dart';
import 'package:ruang_event/screens/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users?>(context);
    //Ambil Home atau Auth
    if (user == null) {
      print("User : $user");
      return Auth();
    } else {
      print("Username : ${user.username}");
      return const HomeScreen(
        title: "Ruang Event",
      );
    }
  }
}
