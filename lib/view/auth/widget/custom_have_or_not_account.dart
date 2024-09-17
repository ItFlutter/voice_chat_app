import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHaveORNotAccount extends StatelessWidget {
  final String text;
  final String buttonText;
  const CustomHaveORNotAccount(
      {super.key, required this.text, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(TextSpan(children: [
        TextSpan(text: text),
        TextSpan(
            text: buttonText,
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w700,
              fontSize: 15.sp,
            )),
      ])),
    );
  }
}
