import 'package:flutter/material.dart';
import 'package:monitoring_pbl/constants.dart';

class ReusableInput extends StatelessWidget {
  final String inputHint;
  final bool isPassword;
  String? inputValue;

  ReusableInput({
    required this.inputHint,
    this.isPassword: false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextField(
        obscureText: isPassword,
        textAlign: TextAlign.center,
        onChanged: (value) {
          inputValue = value;
          print(inputValue);
        },
        decoration: kTextFieldDecoration.copyWith(
          hintText: inputHint,
        ),
        style: TextStyle(color: Colors.black87),
      ),
    );
  }
}
