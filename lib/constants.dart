import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xffCAE4DB);
const Color kNavbarTextColor = Color(0xff413D3D);
const Color kTextColor = Color(0xff5B5B5B);

const TextStyle kNavbarTextStyle = TextStyle(
    fontSize: 14.0, fontWeight: FontWeight.w300, color: kNavbarTextColor);

const TextStyle kInputTextStyle =
    TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: kTextColor);

const TextStyle kTitleTextStyle =
    TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold, color: kTextColor);

const InputDecoration kTextFieldDecoration = InputDecoration(
  hintText: 'value',
  hintStyle: TextStyle(
    color: Colors.black54,
    fontSize: 14,
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black87, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(8.0)),
  ),
);
