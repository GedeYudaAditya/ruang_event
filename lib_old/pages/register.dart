// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
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

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          color: Colors.lightBlue,
          child: Column(children: <Widget>[
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
                    size: 40,
                  ),
                  hintText: "Masukkan Username",
                  hintStyle: const TextStyle(color: Colors.black87),
                  labelText: "Username",
                  labelStyle: TextStyle(color: Colors.black87)),
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
                    size: 40,
                  ),
                  hintText: "Masukkan Email",
                  hintStyle: TextStyle(color: Colors.black87),
                  labelText: "Email",
                  labelStyle: const TextStyle(color: Colors.black87)),
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
                    Icons.home,
                    size: 40,
                  ),
                  hintText: "Alamat Universitas",
                  hintStyle: const TextStyle(color: Colors.black87),
                  labelText: "Universitas",
                  labelStyle: TextStyle(color: Colors.black87)),
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
                    Icons.password,
                    size: 40,
                  ),
                  hintText: "Masukkan Password",
                  hintStyle: const TextStyle(color: Colors.black87),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black87)),
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
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ])),
    );
  }
}
