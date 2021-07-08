library piepage;

import 'package:flutter/material.dart';
import 'package:piemail/email/email.dart' as email;
import 'package:piemail/help/help.dart' as help;
import 'package:piemail/customise/customise.dart' as cust;

class PiePage extends StatefulWidget {
  const PiePage({Key? key}) : super(key: key);

  @override
  _PiePageState createState() => _PiePageState();
}

class _PiePageState extends State<PiePage> {
  int index = 1;

  final piePages = <Widget>[
    help.HelpPage(),
    email.EmailPage(),
    cust.CustomisePage(),
  ];

  void onTap(int i) {
    setState(() {
      index = i;
    });
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/logo_side_dark.jpg',
            fit: BoxFit.fill,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
          ),
        ],
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF292929),
              Color(0xFF292929),
              Color(0xFF373737),
              Color(0xFF373737),
            ],
          ),
        ),
      ),
      toolbarHeight: 85,
    );
  }

  Widget bottomNavBar() {
    return Container(
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Help',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline_rounded),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brush_outlined),
            label: 'Customise',
          ),
        ],
        currentIndex: index,
        onTap: onTap,
        backgroundColor: Color(0xFF90A4AE),
        unselectedItemColor: Color(0xFF636363),
        selectedItemColor: Color(0xFF0053DB),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: piePages[index],
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
