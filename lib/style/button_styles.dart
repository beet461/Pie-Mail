library style;

import 'package:flutter/material.dart';

class ElevatedStyle extends StatefulWidget {
  final String? labelText;
  final Color? labelcolour;
  final InputBorder? bordercolour;
  final dynamic onPressed;
  final Size? size;
  // Reminder to use ! after variable to transform from String? into String

  const ElevatedStyle({
    Key? key,
    this.labelText,
    this.labelcolour,
    this.bordercolour,
    this.onPressed,
    this.size,
  }) : super(key: key);

  @override
  _ElevatedStyleState createState() => _ElevatedStyleState();
}

class _ElevatedStyleState extends State<ElevatedStyle> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.widget.onPressed,
      child: Text(
        this.widget.labelText!,
        style: TextStyle(
          color: this.widget.labelcolour,
          fontFamily: "TypoFont",
          fontSize: 20,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.blueGrey,
        fixedSize: this.widget.size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
