import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ruang_event/models/user.dart';
import 'package:ruang_event/providers/univs_data.dart';
import 'package:ruang_event/screens/account.dart';
import 'package:ruang_event/screens/detailed_event.dart';
import 'package:ruang_event/screens/edit_event_page.dart';
import 'package:ruang_event/screens/favorite_page.dart';
import 'package:ruang_event/screens/auth/login_page.dart';
import 'package:ruang_event/screens/mbkm_page.dart';
import 'package:ruang_event/screens/my_event_page.dart';
import 'package:ruang_event/screens/search_page.dart';
import 'package:ruang_event/screens/univ.dart';
import 'package:ruang_event/screens/auth/register.dart';
import 'package:ruang_event/providers/pages_data.dart';
import 'package:ruang_event/screens/home.dart';
import 'package:ruang_event/screens/setting.dart';
import 'package:ruang_event/screens/wrapper.dart';
import 'package:ruang_event/services/auth_service.dart';
import 'package:ruang_event/widgets/slide_menu.dart';
import 'package:ruang_event/screens/main_menu.dart';
import 'package:ruang_event/widgets/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';

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

// void main() {
//   runApp(const MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Users?>.value(
      initialData: null,
      value: AuthService().user,
      child: ChangeNotifierProvider(
        create: (context) => Pages(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ruang Event',
          theme: myTheme,
          // ThemeData(primaryColor: Colors.blue, primaryColorDark: Colors.deepPurple),
          // home: const MyHomePage(title: 'Ruang Event'),
          initialRoute: Wrapper.routeName,
          routes: {
            Wrapper.routeName: (context) => const Wrapper(),
            HomeScreen.routeName: (context) =>
                const HomeScreen(title: 'Ruang Event'),
            SettingScreen.routeName: (context) => const SettingScreen(),
            AccountScreen.routeName: (context) => const AccountScreen(),
            FavoriteScreen.routeName: (context) => const FavoriteScreen(),
            DetailedEventScreen.routeName: (context) =>
                const DetailedEventScreen(),
            EditEventScreen.routeName: (context) => const EditEventScreen(),
            UnivScreen.routeName: (context) => ChangeNotifierProvider(
                create: (context) => Univs(), child: const UnivScreen()),
            // LoginPage.route: (context) => LoginPage(),
          },
        ),
      ),
    );
  }
}
