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
              ),
            ),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
            ),
          )
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
