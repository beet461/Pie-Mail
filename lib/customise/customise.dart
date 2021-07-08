library cust;

import 'package:flutter/material.dart';

class CustomisePage extends StatefulWidget {
  const CustomisePage({Key? key}) : super(key: key);

  @override
  _CustomisePageState createState() => _CustomisePageState();
}

class _CustomisePageState extends State<CustomisePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('CUSTOMISE'),
      ),
    );
  }
}
