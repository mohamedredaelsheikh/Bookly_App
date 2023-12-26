import 'package:booky_app/features/splash/presentation/views/spalsh_view.dart';
import 'package:booky_app/features/splash/presentation/views/widgets/intro__body_view_%202.dart';
import 'package:booky_app/features/splash/presentation/views/widgets/intro__body_view_1.dart';
import 'package:booky_app/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroViews extends StatefulWidget {
  const IntroViews({super.key});

  @override
  State<IntroViews> createState() => _IntroViewsState();
}

class _IntroViewsState extends State<IntroViews> {
  bool islastpage = false;
  final PageController _controller = PageController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                islastpage = (index == 2);
              });
            },
            children: const [
              IntroBodyView1(),
              IntroBodyView2(),
              SplashViewBody(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: const Text("Skip")),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                ),
                islastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SplashView();
                          }));
                        },
                        child: const Text("Done"))
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(microseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Text("Next"))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
