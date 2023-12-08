import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futterauth/components/rounded_btn.dart';
import 'package:futterauth/constants.dart';
import 'package:futterauth/screens/login/components/already_have_an_account_check.dart';
import 'package:futterauth/screens/login/components/rounded_input_field.dart';
import 'package:futterauth/screens/login/login_screen.dart';
import 'package:futterauth/screens/signup/components/background.dart';
import 'package:futterauth/screens/signup/components/or_divider.dart';
import 'package:futterauth/screens/signup/components/social_icon.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hinttext: 'Your Email',
              onchanged: (value) {},
              icon: Icons.person,
            ),
            RoundedInputField(
              hinttext: ' Password',
              onchanged: (value) {},
              obsecuretext: true,
              icon: Icons.lock,
              suffixicon: Icons.visibility,
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () {},
              color: kPrimaryColor,
              textcolor: Colors.white,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              login: false,
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconsrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconsrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconsrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
