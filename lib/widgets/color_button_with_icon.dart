import 'package:flutter/material.dart';




class ColorfulButtonWithIcon extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  final Icon buttonIcon;
  final Function onTap;

  ColorfulButtonWithIcon({@required this.text,@required this.textColor, this.buttonColor, this.buttonIcon, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: onTap,
      label: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      color: buttonColor,

      icon: buttonIcon,

    );
  }
}