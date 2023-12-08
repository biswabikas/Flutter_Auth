import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    required this.color,
    required this.textcolor,
  });
  final String text;
  final void Function() press;
  final Color color, textcolor;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: size.width * 0.8,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(color: textcolor),
          ),
        ),
      ),
    );
  }
}
