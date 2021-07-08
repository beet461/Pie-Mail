import 'package:flutter/material.dart';
import 'package:piemail/email/email.dart' as email;
import 'package:piemail/help/help.dart' as help;
import 'package:piemail/customise/customise.dart' as cust;
import 'package:piemail/pages.dart' as piepages;

void main() {
  runApp(PieMail());
}

int index = 1;

class PieMail extends StatelessWidget {
  final pages = <Widget>[
    help.HelpPage(),
    email.EmailPage(),
    cust.CustomisePage(),
  ];

  PieMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: piepages.PiePage(),
    );
  }
}
