import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroBodyView1 extends StatelessWidget {
  const IntroBodyView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: const Color(0xffD9A076),
        child: Center(
          child: Lottie.asset("assets/videos/Animation - 1703096669233.json"),
        ),
      ),
      Positioned(
        bottom: 100,
        right: 100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "A book a\n day keeps the\n reality away.",
              textAlign: TextAlign.center,
              style: Styles.textStyle30.copyWith(fontFamily: kGTSectraFine),
            ),
          ),
        ),
      ),
    ]);
  }
}
