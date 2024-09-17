import 'package:flutter/material.dart';
import 'package:voice_chat_app/core/constant/app_colors.dart';
import 'package:voice_chat_app/view/widget/shared/custom_button.dart';

class CustomButtonGradientAndShadow extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButtonGradientAndShadow(
      {super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              color: AppColors.shadowColor,
            )
          ],
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors.beginLinear,
                AppColors.endLinear,
              ]),
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: CustomButton(
          text: "Login",
          onPressed: onPressed,
          textColor: AppColors.white,
        ));
  }
}
