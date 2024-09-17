import 'package:flutter/material.dart';
import 'package:voice_chat_app/core/constant/app_colors.dart';

class CustomGradient extends StatelessWidget {
  final Widget widget;
  const CustomGradient({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            AppColors.beginLinear,
            AppColors.endLinear,
          ])),
      child: widget,
    );
  }
}
