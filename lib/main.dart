import 'package:flutter/material.dart';
import 'package:monitoring_pbl/pages/room_screen.dart';
import 'pages/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        RoomScreen.id: (context) => RoomScreen(),
      },
    );
  }
}
