import 'package:flutter/material.dart';
import 'package:voice_chat_app/view/widget/shared/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? color;
  final Color? textColor;
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color,
      child: CustomText(
        text: text,
        color: textColor,
      ),
    );
  }
}
