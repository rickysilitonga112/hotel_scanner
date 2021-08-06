import 'package:flutter/material.dart';
import 'package:monitoring_pbl/components/header.dart';

import 'package:qrscan/qrscan.dart' as scanner;

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String? scanResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          TextButton(
            onPressed: () async {
              // scan
              scanResult = await scanner.scan();
              setState(() {});
              print(scanResult);
            },
            child: Text('Scann'),
          )
        ],
      ),
    );
  }
}
