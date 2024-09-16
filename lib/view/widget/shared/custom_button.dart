import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_chat_app/core/constant/size.dart';
import 'package:voice_chat_app/view/widget/shared/custom_text.dart';
import '../../../core/constant/app_colors.dart';

class CustomButton extends StatelessWidget {
  final double? minWidth;
  final String text;
  final void Function()? onPressed;
  final bool isActive;
  const CustomButton(
      {super.key,
      required this.text,
      this.onPressed,
      required this.isActive,
      this.minWidth});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      onPressed: onPressed,
      color: isActive ? AppColors.buttonColor : AppColors.secondaryColor,
      elevation: 10,
      height: 40.h,
      shape: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(MySize.borderRadiusMd)),
      child: CustomText(text: text),
    );
  }
}
