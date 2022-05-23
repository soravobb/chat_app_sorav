

import 'package:chat_app_sorav/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.text,
    required this.press,
    this.color =kPrimaryColor,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.75),

  }) : super(key: key);

  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      padding: padding,
      color: color,
      onPressed: press,
      minWidth: double.infinity,
      child: Text(text,
      style: TextStyle(
        color: Colors.white,
      ),
      ),
        );
  }
}

