import 'package:flutter/material.dart';
import 'package:onboarding_practice/screens/signed_up.dart';
import 'package:onboarding_practice/widgets/button.dart';
import 'package:onboarding_practice/widgets/spacer.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';

class SignUpGoogleScreen extends StatelessWidget {
  const SignUpGoogleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spc(h: 100),

            // google icon, mail
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Hero(
                  tag: 'hero',
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/assets/icons/google.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      'kiishi@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Spc(w: 10),
                    Icon(Icons.arrow_drop_down, color: Colors.white),
                  ],
                ).animate(delay: 700.ms).fadeIn(duration: 1000.ms),
              ],
            ),

            // text, would like
            const Spc(h: 35),
            const Text(
              'Kiishi, Beery would like to:',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ).animate(delay: 700.ms).fadeIn(duration: 1000.ms),

            const Spc(h: 50),
            Row(
              children: const [
                CircleAvatar(
                  // backgroundColor: Colors.grey,
                  radius: 20,
                  backgroundImage: AssetImage('lib/assets/icons/avt.jpg'),
                ),
                Spc(w: 30),
                Text(
                  'View your email address',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Spacer(),
                Text(
                  '?',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ).animate(delay: 700.ms).fadeIn(duration: 1000.ms),
            const Spc(h: 40),
            Row(
              children: const [
                CircleAvatar(
                  // backgroundColor: Colors.grey,
                  radius: 20,
                  backgroundImage: AssetImage('lib/assets/icons/avt.jpg'),
                ),
                Spc(w: 30),
                Text(
                  'View your basic profile info',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Spacer(),
                Text(
                  '?',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ).animate(delay: 700.ms).fadeIn(duration: 1000.ms),

            // disclaimer
            const Spc(h: 50),
            const Text(
              '👀 By clicking "Allow", you allow this app and Google to use your information in accordance with their respective terms of service and privacy policies.',
              style: TextStyle(color: Colors.white, fontSize: 15, height: 1.9),
            ).animate(delay: 700.ms).fadeIn(duration: 1000.ms),

            // button
            const Spc(h: 50),
            Hero(
              tag: 'b',
              child: BButton(
                padding: 60,
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      duration: const Duration(milliseconds: 600),
                      type: PageTransitionType.fade,
                      child: const SignedUpScreen(),
                    ),
                  );
                },
                color: const Color(0xFFFFAF19),
                item: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Spc(w: 10),
                    Text(
                      'Allow and Sign Up',
                      style: TextStyle(fontSize: 17),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ).animate(delay: 700.ms).fadeIn(duration: 1000.ms),
            ),

            // problem
            const Spc(h: 50),
            const Text(
              'If you have a problem with Google,',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ).animate(delay: 700.ms).fadeIn(duration: 1000.ms),
            const Spc(h: 10),

            const Text(
              'Sign up here!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ).animate(delay: 700.ms).fadeIn(duration: 1000.ms),
          ],
        ),
      ),
    );
  }
}
