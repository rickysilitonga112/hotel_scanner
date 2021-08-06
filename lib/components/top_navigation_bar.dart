import 'package:flutter/material.dart';
import 'package:monitoring_pbl/constants.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 12.0),
      color: kPrimaryColor,
      width: double.infinity,
      child: Row(
        children: [
          Column(
            children: [
              Icon(
                Icons.home,
                size: 35.0,
                color: kNavbarTextColor,
              ),
              Text('Home', style: kNavbarTextStyle)
            ],
          ),
          SizedBox(
            width: 16.0,
          ),
          Column(
            children: [
              Icon(
                Icons.logout,
                size: 35.0,
                color: kNavbarTextColor,
              ),
              Text('Logout', style: kNavbarTextStyle)
            ],
          ),
        ],
      ),
    );
  }
}
