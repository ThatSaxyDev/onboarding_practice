// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BButton extends StatelessWidget {
  // final double height;
  // final double width;
  final double padding;
  // final double radius;
  final void Function()? onTap;
  final Color color;
  final Widget item;
  const BButton({
    Key? key,
    // required this.height,
    // required this.width,
    this.padding = 30,
    // required this.radius,
    required this.onTap,
    required this.color,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      // width: width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: color,
          padding: EdgeInsets.symmetric(horizontal: padding),
        ),
        child: Center(
          child: item,
        ),
      ),
    );
  }
}
