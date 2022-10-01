import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:onboarding_practice/screens/sign_up_with_google.dart';
import 'package:onboarding_practice/widgets/button.dart';
import 'package:onboarding_practice/widgets/spacer.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller1 = PageController();
  final PageController _controller2 = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const Spc(h: 30),

          // animated items
          SizedBox(
            height: 400,
            child: PageView(
              controller: _controller1,
              onPageChanged: (value) {
                _controller2.jumpTo(
                    _controller1.offset); // pay attention to this section
              },
              children: [
                Lottie.asset(
                  'lib/assets/lottie/61224-beer-can.json',
                  repeat: false,
                ),
                Lottie.asset(
                  'lib/assets/lottie/91044-cheers.json',
                  repeat: false,
                ),
              ],
            ),
          ),

          // page indicator
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SmoothPageIndicator(
                controller: _controller1,
                count: 2,
                effect: JumpingDotEffect(
                  dotHeight: 10,
                  dotColor: Colors.grey.withOpacity(0.3),
                  activeDotColor: Colors.white,
                ),
              ),
            ),
          ),
          const Spc(h: 20),

          // text
          SizedBox(
            height: 100,
            child: PageView(
              controller: _controller2,
              onPageChanged: (value) {
                _controller1.jumpTo(
                    _controller2.offset); // pay attention to this section
              },
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: const Text(
                    'The Best Beer In The Country 🍺',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ).animate().fadeIn(duration: 2000.ms),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: const Text(
                    'Better With Friends.\nTrust! 🍻',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ).animate().fadeIn(duration: 2000.ms),
                ),
              ],
            ),
          ),

          const Spc(h: 50),

          // buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                BButton(
                  onTap: () {},
                  color: const Color(0xFFFFAF19),
                  item: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Spc(w: 10),
                      Text(
                        'Sign in',
                        style: TextStyle(fontSize: 17),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),

                //
                const Spc(h: 25),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: BButton(
                      padding: 60,
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            duration: const Duration(milliseconds: 600),
                            type: PageTransitionType.fade,
                            child: const SignUpGoogleScreen(),
                          ),
                        );
                      },
                      color: Colors.grey.withOpacity(0.1),
                      item: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 30,
                            child: Hero(
                              tag: 'hero',
                              child: Image.asset('lib/assets/icons/google.png'),
                            ),
                          ),
                          const Text(
                            'Sign up with google',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
