import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futterauth/components/rounded_btn.dart';
import 'package:futterauth/constants.dart';
import 'package:futterauth/screens/login/login_screen.dart';
import 'package:futterauth/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Bcakground(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'welcome to the edu',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: 'LOGIN',
              color: kPrimaryColor,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              textcolor: Colors.white,
            ),
            RoundedButton(
              text: 'Sign Up',
              color: kPrimaryLightColor,
              textcolor: Colors.black,
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}
