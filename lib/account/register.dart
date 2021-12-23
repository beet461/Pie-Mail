library account;

import 'package:flutter/material.dart';

class RegisterPanel extends StatefulWidget {
  const RegisterPanel({Key? key}) : super(key: key);

  @override
  _RegisterPanelState createState() => _RegisterPanelState();
}

class _RegisterPanelState extends State<RegisterPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [],
      ),
      decoration: BoxDecoration(
        color: Color(0xFFBED3F0),
      ),
      constraints: BoxConstraints.expand(height: 450),
    );
  }
}
