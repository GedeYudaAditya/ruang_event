import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_event/screens/detailed_event.dart';
import 'package:ruang_event/screens/edit_event_page.dart';
import 'package:ruang_event/screens/favorite_page.dart';
import 'package:ruang_event/pages/login/login_page.dart';
import 'package:ruang_event/screens/mbkm_page.dart';
import 'package:ruang_event/screens/my_event_page.dart';
import 'package:ruang_event/screens/search_page.dart';
import 'package:ruang_event/screens/univ.dart';
import 'package:ruang_event/screens/register.dart';
import 'package:ruang_event/providers/pages_data.dart';
import 'package:ruang_event/screens/home.dart';
import 'package:ruang_event/screens/setting.dart';
import 'package:ruang_event/widgets/slide_menu.dart';
import 'package:ruang_event/screens/main_menu.dart';
import 'package:ruang_event/widgets/theme/theme.dart';

/*
===============================================================================
Frame Name    : Core Frame App
-------------------------------------------------------------------------------
Team Handler  : Gede Yuda Aditya              [ 2015051003 ] L
                Alfiansyah                    [ 2015051023 ]
                Putri Eodytha Aisya Purnomo   [ 2015051046 ]
                Kadek Deva Pramana Putra      [ 2015051071 ]
                Made Edi Irawan               [ 1915051066 ]

Class         : 4A
Prodi         : PTI
-------------------------------------------------------------------------------
Note & Rule   :
1. [Yuda] ==> Jangan ubah bagian code file ini tanpa konfirmasi ke [Yuda].
2. [Yuda] ==> Tidak boleh mengusik frame milik orang lain (kecuali tindakan
              diperbolehkan oleh yang punya).
3. [Yuda] ==> Konfirmasi jika ingin melakukan Marge atau penggabungan.
4. [Yuda] ==> Saling bantu ketika ada kesulitan.
===============================================================================
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Pages(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ruang Event',
        theme: myTheme,
        // ThemeData(primaryColor: Colors.blue, primaryColorDark: Colors.deepPurple),
        // home: const MyHomePage(title: 'Ruang Event'),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) =>
              const HomeScreen(title: 'Ruang Event'),
          SettingScreen.routeName: (context) => const SettingScreen(),
          FavoriteScreen.routeName: (context) => const FavoriteScreen(),
        },
      ),
    );
  }
}
