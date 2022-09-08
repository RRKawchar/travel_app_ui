import 'package:flutter/material.dart';

class AppSimpleText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppSimpleText({Key? key, required this.text,  this.color=Colors.white,this.size=30}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,style: TextStyle(color: color,fontSize: size),
    );
  }
}
