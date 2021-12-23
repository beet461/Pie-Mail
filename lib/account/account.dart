library account;

import 'package:flutter/material.dart';
import 'package:piemail/account/login.dart';
import 'package:piemail/account/register.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  dynamic uops;
  bool login = true;

  Widget panelOptionButtons(String name, bool switchTo, Color primary) {
    return ElevatedButton(
      child: Text(name),
      onPressed: () {
        setState(() {
          login = switchTo;
        });
      },
      style: ElevatedButton.styleFrom(
        primary: primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10),
          ),
        ),
        fixedSize: Size(200, 50),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Column(
            children: <Widget>[
              // The login and register panel buttons
              Row(
                children: <Widget>[
                  panelOptionButtons(
                    "Login",
                    true,
                    login ? Color(0xFFBED3F0) : Color(0xFF4B545F),
                  ),
                  panelOptionButtons(
                    "Register",
                    false,
                    !login ? Color(0xFFBED3F0) : Color(0xFF4B545F),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              login ? LoginPanel() : RegisterPanel(),
            ],
          ),
          width: 400,
          height: 500,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color(0xFF444444),
                spreadRadius: 15,
                blurRadius: 15,
              )
            ],
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
