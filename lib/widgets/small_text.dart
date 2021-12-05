// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SmallTextCustom extends StatelessWidget {
  const SmallTextCustom({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.blue.shade800,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 12.0),
      ),
    );
  }
}
