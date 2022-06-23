import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ruang_event/models/user.dart';
import 'package:ruang_event/screens/auth/auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // CollectionReference users = FirebaseFirestore.instance.collection('users');

  // Future<void> addUser(uid, username, email) {
  //   // Call the user's CollectionReference to add a new user
  //   return users
  //       .add({
  //         'uid': uid,
  //         'username': username,
  //         'email': email,
  //         'univ': "Belum Terdaftar",
  //         'phone': "Belum Terkonfigurasi",
  //         'wa': "Belum Terkonfigurasi",
  //         'web': "Belum Terkonfigurasi",
  //         'ig': "Belum Terkonfigurasi",
  //       })
  //       .then((value) => print("User Added"))
  //       .catchError((error) => print("Failed to add user: $error"));
  // }

  // tambahkan obj dari Firebase
  Users? _userFromFirebaseUser(User? user) {
    // addUser(user?.uid, user?.displayName, user?.email);
    return user != null
        ? Users(uid: user.uid, email: user.email, username: user.displayName)
        : null;
  }

  // auth change user stream
  Stream<Users?> get user {
    return _auth
        .authStateChanges()
        // .map((User? user) => _userFromFirebaseUser(user));
        .map(_userFromFirebaseUser);
  }

  // sign in
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  // sign in with email and pass
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  // register with email and pass
  Future registerWithEmailAndPassword(
      {required String email,
      required String password,
      required String username}) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      // ignore: await_only_futures
      User? user = await result.user!
        ..updateDisplayName(username);
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return false;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
