import 'package:flutter/material.dart';
import 'package:piemail/pages.dart' as piepages;

void main() {
  runApp(PieMail());
}

class PieMail extends StatelessWidget {
  PieMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: piepages.PiePage(),
    );
  }
}
