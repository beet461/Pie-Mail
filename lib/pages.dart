library piepage;

import 'package:flutter/material.dart';
import 'package:piemail/email/email.dart' as email;
import 'package:piemail/account/account.dart' as account;
import 'package:piemail/chat/chat.dart' as chat;
import 'package:piemail/animations.dart';
import 'package:piemail/file_options/file_options.dart';

class UserOptions {
  bool lin;
  String email;
  String password;
  String fname;
  String lname;
  String id;
  String colourscheme;

  UserOptions(
    this.lin,
    this.email,
    this.password,
    this.fname,
    this.lname,
    this.id,
    this.colourscheme,
  );
}

class PiePage extends StatefulWidget {
  const PiePage({Key? key}) : super(key: key);

  @override
  _PiePageState createState() => _PiePageState();
}

class _PiePageState extends State<PiePage> {
  int index = 1;

  /// While [setOps] is running 'a' is true, so loading animation is played until method is finished
  bool a = true;

  final piePages = <Widget>[
    account.AccountPage(),
    email.EmailPage(),
    chat.ChatPage(),
  ];

  /// [setOps] runs method [FileOptions.getOptions],
  /// "user" json object of options.json is stored in _data
  /// which is then used to create a new instance of UserOptions with the data
  void setOps() async {
    var fos = new FileOptions();
    dynamic _data = await fos.getOptions();
    _data = _data["user"];
    dynamic uops = UserOptions(
      _data[0]["loggedIn"],
      _data[0]["email"],
      _data[0]["password"],
      _data[0]["firstname"],
      _data[0]["lastname"],
      _data[0]["id"],
      _data[1]["theme"],
    );

    setState(() {
      this.a = false;
    });
  }

  @override
  void initState() {
    super.initState();
    setOps();
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Image.asset(
        'assets/images/logo_light.png',
        fit: BoxFit.fill,
        height: 85,
      ),
      centerTitle: true,
      backgroundColor: Color(0xFFBED3F0),
      toolbarHeight: 85,
    );
  }

  Widget bottomNavBar() {
    return Container(
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline_rounded),
            label: 'Mail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
        currentIndex: index,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        backgroundColor: Color(0xFFBED3F0),
        unselectedItemColor: Color(0xFF636363),
        selectedItemColor: Color(0xFF004261),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        child: this.a ? LoadingAnimations.pouringHour : piePages[index],
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pie_outline_gradient.png'),
            repeat: ImageRepeat.repeat,
          ),
          color: Color(0xFF292929),
        ),
        constraints: BoxConstraints.expand(),
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }
}
