import 'package:flutter/material.dart';
import 'package:monitoring_pbl/constants.dart';

class ReusableButton extends StatelessWidget {
  final buttonText;
  final onPress;

  ReusableButton({
    required this.buttonText,
    required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
      ),
    );
  }
}
