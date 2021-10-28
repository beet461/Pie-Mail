library email;

import 'package:flutter/material.dart';
import 'package:piemail/email/side_menu.dart';

class EmailPage extends StatefulWidget {
  const EmailPage({Key? key}) : super(key: key);

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SideMenu(),
      ],
    );
  }
}
