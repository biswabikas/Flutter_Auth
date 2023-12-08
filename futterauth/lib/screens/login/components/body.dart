import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:futterauth/components/rounded_btn.dart';
import 'package:futterauth/constants.dart';
import 'package:futterauth/screens/login/components/already_have_an_account_check.dart';
import 'package:futterauth/screens/login/components/background.dart';
import 'package:futterauth/screens/login/components/rounded_input_field.dart';
import 'package:futterauth/screens/signup/signup_screen.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hinttext: 'Your Email',
              icon: Icons.person,
              onchanged: (value) {},
            ),
            RoundedInputField(
              obsecuretext: true,
              icon: Icons.lock,
              hinttext: 'Password',
              suffixicon: Icons.visibility,
              onchanged: (value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
              textcolor: Colors.white,
              color: kPrimaryColor,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
