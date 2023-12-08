import 'package:flutter/material.dart';
import 'package:futterauth/constants.dart';
import 'package:futterauth/screens/login/components/textfield_container.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    super.key,
    required this.hinttext,
    this.icon,
    this.suffixicon,
    required this.onchanged,
    this.obsecuretext = false,
  });
  final String hinttext;
  final IconData? icon;
  final IconData? suffixicon;
  final ValueChanged<String> onchanged;
  final bool? obsecuretext;

  @override
  Widget build(BuildContext context) {
    return TextFielContainer(
      child: TextField(
        obscuringCharacter: '*',
        obscureText: obsecuretext!,
        onChanged: onchanged,
        decoration: InputDecoration(
          hintText: hinttext,
          prefixIcon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            suffixicon,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
