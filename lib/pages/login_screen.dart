import 'package:flutter/material.dart';
import 'package:monitoring_pbl/constants.dart';
import 'package:monitoring_pbl/components/reusable_button.dart';
import 'package:monitoring_pbl/pages/room_screen.dart';

// package
import 'package:rflutter_alert/rflutter_alert.dart'; // rflutter package

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final username = "admin";
  final password = "admin";

  String? inpustUsername;
  String? inputPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/bg.jpg'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Blitz Hotel',
              style: kTitleTextStyle,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  inpustUsername = value;
                  print(inpustUsername);
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "masukkan username",
                ),
                style: TextStyle(color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  inputPassword = value;
                  print(inputPassword);
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: "masukkan password",
                ),
                style: TextStyle(color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ReusableButton(
              buttonText: 'Login',
              onPress: () {
                if (inpustUsername == username && inputPassword == password) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RoomScreen();
                      },
                    ),
                  );
                } else {
                  Alert(
                    context: context,
                    type: AlertType.error,
                    title: "LOGIN GAGAL",
                    desc: "username atau password yang anda masukkan salah",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "KEMBALI",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        width: 120,
                      )
                    ],
                  ).show();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
