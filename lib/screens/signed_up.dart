import 'package:flutter/material.dart';
import 'package:onboarding_practice/widgets/button.dart';
import 'package:onboarding_practice/widgets/spacer.dart';

class SignedUpScreen extends StatelessWidget {
  const SignedUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      color: Colors.black,
      child: Center(
        child: Hero(
          tag: 'b',
          child: BButton(
            onTap: () {},
            color: Colors.green,
            item: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Spc(w: 10),
                Text(
                  'Sign up Completed',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                Icon(
                  Icons.done,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
