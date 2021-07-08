import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> with TickerProviderStateMixin {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    final barStates = <Widget>[
      closedBar(),
      openedBar(),
    ];

    return Container(
      child: barStates[i],
      height: 800,
      color: Colors.blueGrey,
    );
  }

  Widget closedBar() {
    return Container(
      child: ListView(
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              setState(() {
                i = 1;
              });
            },
            child: Icon(
              Icons.menu,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            hoverElevation: 0,
          ),
        ],
      ),
      width: 50,
    );
  }

  Widget openedBar() {
    return Container(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Row(
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    i = 0;
                  });
                },
                child: Icon(
                  Icons.menu,
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                hoverElevation: 0,
              ),
              Text(
                'Email Categories',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                  fontSize: 23,
                  fontFamily: 'TypoFont',
                ),
              ),
            ],
          ),
        ],
      ),
      width: 300,
      color: Colors.blueGrey,
    );
  }
}
