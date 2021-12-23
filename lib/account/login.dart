library account;

import 'package:flutter/material.dart';

class LoginPanel extends StatefulWidget {
  const LoginPanel({Key? key}) : super(key: key);

  @override
  _LoginPanelState createState() => _LoginPanelState();
}

class _LoginPanelState extends State<LoginPanel> {
  dynamic FieldBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: BorderSide(
      width: 2,
      color: Color(0xFF303F9F),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              label: Text("Email"),
              labelStyle: TextStyle(
                color: Colors.grey[600],
                fontFamily: "TypoFont",
                fontSize: 20,
              ),
              enabledBorder: FieldBorder,
              focusedBorder: FieldBorder,
              contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
            ),
          ),
          // spacer
          Container(
            padding: EdgeInsets.all(20),
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("Password"),
              labelStyle: TextStyle(
                color: Colors.grey[600],
                fontFamily: "TypoFont",
                fontSize: 20,
              ),
              enabledBorder: FieldBorder,
              focusedBorder: FieldBorder,
              contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
            ),
          ),
          // spacer
          Container(
            padding: EdgeInsets.all(20),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "TypoFont",
                fontSize: 20,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey,
              fixedSize: Size(300, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(10, 50, 50, 10),
      decoration: BoxDecoration(
        color: Color(0xFFBED3F0),
      ),
      constraints: BoxConstraints.expand(height: 450),
    );
  }
}
