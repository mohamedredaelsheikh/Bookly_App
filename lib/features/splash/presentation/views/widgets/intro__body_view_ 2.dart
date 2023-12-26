import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroBodyView2 extends StatelessWidget {
  const IntroBodyView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: const Color(0xffB6A776),
        child: Center(
          child: Lottie.asset("assets/videos/Animation - 1703096904057.json"),
        ),
      ),
      Positioned(
          bottom: 80,
          right: 90,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "We read books \nto find out \n who we are.\n- URSULA K. LE GUIN.\n",
              textAlign: TextAlign.center,
              style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.w800, fontFamily: kGTSectraFine),
            ),
          ))),
    ]);
  }
}
