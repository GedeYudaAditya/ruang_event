// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:ruang_event/services/auth_service.dart';
/*
===============================================================================
Frame Name    : Register Frame
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

class RegisterPage extends StatefulWidget {
  // const RegisterPage({Key? key}) : super(key: key);

  final Function toggleView;
  RegisterPage({required this.toggleView});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  String username = '';
  // String universitas = '';
  // String alamatUniv = '';
  String emailUser = '';
  String passwordUser = '';
  String confPasswordUser = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff015fb7),
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      color: Colors.black87, shape: BoxShape.circle),
                  child: const Center(
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "REGISTER",
                  style: TextStyle(fontSize: 40, color: Colors.black87),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)),
                      prefixIcon: Icon(
                        Icons.person,
                        size: 32,
                      ),
                      hintText: "Masukkan Username",
                      hintStyle: const TextStyle(color: Colors.black87),
                      labelText: "Username",
                      labelStyle: TextStyle(color: Colors.black87)),
                  validator: (val) =>
                      val!.isEmpty ? 'Masukkan Username!' : null,
                  onChanged: (val) {
                    setState(() => username = val);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black87)),
                      prefixIcon: Icon(
                        Icons.email,
                        size: 32,
                      ),
                      hintText: "Masukkan Email",
                      hintStyle: TextStyle(color: Colors.black87),
                      labelText: "Email",
                      labelStyle: const TextStyle(color: Colors.black87)),
                  validator: (val) => val!.isEmpty ? 'Masukkan Email!' : null,
                  onChanged: (val) {
                    setState(() => emailUser = val);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                // TextFormField(
                //   decoration: const InputDecoration(
                //       border: const OutlineInputBorder(),
                //       focusedBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.black87)),
                //       prefixIcon: Icon(
                //         Icons.school,
                //         size: 32,
                //       ),
                //       hintText: "Nama Universitas",
                //       hintStyle: const TextStyle(color: Colors.black87),
                //       labelText: "Universitas",
                //       labelStyle: TextStyle(color: Colors.black87)),
                //   validator: (val) =>
                //       val!.isEmpty ? 'Masukkan Nama Universitas!' : null,
                //   onChanged: (val) {
                //     setState(() => universitas = val);
                //   },
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // TextFormField(
                //   decoration: const InputDecoration(
                //       border: const OutlineInputBorder(),
                //       focusedBorder: OutlineInputBorder(
                //           borderSide: BorderSide(color: Colors.black87)),
                //       prefixIcon: Icon(
                //         Icons.location_city,
                //         size: 32,
                //       ),
                //       hintText: "Alamat Universitas",
                //       hintStyle: const TextStyle(color: Colors.black87),
                //       labelText: "Lokasi",
                //       labelStyle: TextStyle(color: Colors.black87)),
                //   validator: (val) =>
                //       val!.isEmpty ? 'Masukkan Alamat Universitas!' : null,
                //   onChanged: (val) {
                //     setState(() => alamatUniv = val);
                //   },
                // ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black87)),
                      prefixIcon: const Icon(
                        Icons.lock,
                        size: 32,
                      ),
                      hintText: "Masukkan Password",
                      hintStyle: const TextStyle(color: Colors.black87),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.black87)),
                  validator: (val) =>
                      val!.isEmpty ? 'Masukkan Password!' : null,
                  onChanged: (val) {
                    setState(() => passwordUser = val);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: const OutlineInputBorder(),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black87)),
                      prefixIcon: const Icon(
                        Icons.lock_open,
                        size: 32,
                      ),
                      hintText: "Kofirmasi Password",
                      hintStyle: const TextStyle(color: Colors.black87),
                      labelText: "Konfirmasi Password",
                      labelStyle: TextStyle(color: Colors.black87)),
                  validator: (val) =>
                      val!.isEmpty ? 'Tolong konfirmasi password!' : null,
                  onChanged: (val) {
                    setState(() => confPasswordUser = val);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  color: Colors.black87,
                  elevation: 5,
                  child: Container(
                    height: 50,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          dynamic result =
                              await _auth.registerWithEmailAndPassword(
                                  email: emailUser,
                                  password: passwordUser,
                                  username: username);
                          if (!result) {
                            setState(
                                () => error = 'please supply a valid email');
                          }
                        }
                      },
                      child: const Center(
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                )
              ]),
        ),
      ),
    );
  }
}
