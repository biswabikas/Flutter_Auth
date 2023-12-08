import 'package:flutter/material.dart';
import 'package:futterauth/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  const AlreadyHaveAnAccountCheck({
    super.key,
    this.login = true,
    required this.press,
  });
  final bool login;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            login ? "Dont't have an account?" : 'Already have an Account?',
            style: const TextStyle(color: kPrimaryColor),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            login ? 'Sign Up' : 'SignIn',
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
