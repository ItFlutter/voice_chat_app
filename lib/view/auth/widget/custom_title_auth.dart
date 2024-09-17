import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_chat_app/core/constant/app_colors.dart';
import 'package:voice_chat_app/core/constant/app_image_asset.dart';
import 'package:voice_chat_app/view/widget/shared/custom_text.dart';

class CustomTitleAuth extends StatelessWidget {
  const CustomTitleAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomText(
          text: "Tembo Chat",
          fontSize: 28.sp,
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
        Image.asset(
          AppImageAsset.logo,
          height: 75.h,
        ),
      ],
    );
  }
}
