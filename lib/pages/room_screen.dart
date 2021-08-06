import 'package:flutter/material.dart';
import 'package:monitoring_pbl/constants.dart';
import 'package:monitoring_pbl/components/reusable_button.dart';
import 'package:monitoring_pbl/pages/scan_screen.dart';

class RoomScreen extends StatefulWidget {
  static const String id = 'room_screen';

  const RoomScreen({Key? key}) : super(key: key);

  @override
  _RoomScreenState createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  String? selectedRoomNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: DropdownButton(
              isExpanded: true,
              value: selectedRoomNumber,
              hint: Container(
                width: 150, //and here
                child: Text(
                  "Pilih nomor kamar",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              onChanged: (String? roomNumber) {
                setState(() {
                  selectedRoomNumber = roomNumber!;
                });
              },
              items: <String>['101', '102', '103', '104']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      value,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ReusableButton(
            buttonText: 'Login',
            onPress: () {
              // Navigator.push(context, )
              // route to scan screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ScanScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
