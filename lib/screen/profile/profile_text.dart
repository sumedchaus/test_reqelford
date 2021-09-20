import 'package:flutter/material.dart';

class Profile_text extends StatelessWidget {
  final Color color;
  final String text;

  Profile_text({this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: 16),
    );
  }
}
