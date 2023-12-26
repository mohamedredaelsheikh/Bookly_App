import 'package:booky_app/constants.dart';
import 'package:booky_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class SlidingAnimationText extends StatelessWidget {
  const SlidingAnimationText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Text(
            "Enjoy Reading Free Books.",
            style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
