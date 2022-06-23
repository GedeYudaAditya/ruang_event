// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// import 'package:ruang_event/pages/login/home_page.dart';
import 'package:ruang_event/screens/home.dart';
import 'package:ruang_event/screens/auth/register.dart';
import 'package:ruang_event/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  static String routeName = 'login-page';

  final Function toggleView;
  LoginPage({required this.toggleView});

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  String emailUser = '';
  String passwordUser = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        radius: 80.0,
        child: Image.asset('assets/images/logo.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: '',
      decoration: InputDecoration(
        icon: Icon(Icons.people_alt),
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      validator: (val) => val!.isEmpty ? 'Enter an email' : null,
      onChanged: (val) {
        setState(() => emailUser = val);
      },
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
      validator: (val) => val!.isEmpty ? 'Enter an password' : null,
      onChanged: (val) {
        setState(() => passwordUser = val);
      },
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.orange,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () async {
            // Navigator.of(context).pushNamed(HomeScreen.routeName);
            if (_formKey.currentState!.validate()) {
              dynamic result = await _auth.signInWithEmailAndPassword(
                  emailUser, passwordUser);
              if (!result) {
                setState(
                    () => error = 'Could Not Sign In with those credentials');
              }
            }
          },
          color: Colors.orange,
          child: Text('Log In', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'First Time? Create Account',
        style: TextStyle(color: Colors.orangeAccent),
      ),
      onPressed: () {
        widget.toggleView();
        // Route route =
        //     MaterialPageRoute(builder: (context) => const RegisterPage());
        // Navigator.push(context, route);
      },
    );

    return Scaffold(
      // appBar: AppBar(title: const Text("Ruang Event")),
      backgroundColor: Color(0xff015fb7),
      body: Center(
        child: Form(
          key: _formKey,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 48.0),
              email,
              SizedBox(height: 8.0),
              password,
              SizedBox(height: 24.0),
              loginButton,
              forgotLabel,
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
