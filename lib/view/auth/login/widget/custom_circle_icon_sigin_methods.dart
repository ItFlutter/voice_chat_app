import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voice_chat_app/core/constant/app_colors.dart';

class CustomCircleIconSiginMethods extends StatelessWidget {
  final String assetName;
  const CustomCircleIconSiginMethods({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 15,
      backgroundColor: AppColors.white,
      child: Padding(
        padding: EdgeInsets.all(5.w),
        child: SvgPicture.asset(
          assetName,
        ),
      ),
    );
  }
}
