import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/app_colors.dart';

import 'app_simple_text.dart';

class AppButton extends StatelessWidget {
  String? text;
  IconData? icon;
  bool? isIcon;
  final Color text_iconColor;
  final Color backgroundColor;
  final Color borderColor;
  double size;

  AppButton({
    Key? key,
    this.text,
    this.icon,
    this.isIcon=false,
    required this.size,
    required this.text_iconColor,
    required this.backgroundColor,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          border: Border.all(
            color:borderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor
      ),
      child: isIcon==false?Center(child: AppSimpleText(text: text!,color: text_iconColor,size: 20,)):Center(child: Icon(icon,color: text_iconColor,)),
    );
  }
}
