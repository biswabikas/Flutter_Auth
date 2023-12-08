import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:futterauth/constants.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.iconsrc,
    required this.press,
  });
  final String iconsrc;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: kPrimaryLightColor,
            ),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          iconsrc,
        ),
      ),
    );
  }
}
