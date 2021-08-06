import 'package:flutter/material.dart';
import 'top_navigation_bar.dart';
import 'package:monitoring_pbl/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/bg.jpg'),
        TopNavigationBar(),
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
      ],
    );
  }
}
