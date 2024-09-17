import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voice_chat_app/core/constant/app_colors.dart';
import 'package:voice_chat_app/view/auth/login/controller/login_controller.dart';
import 'package:voice_chat_app/view/auth/login/widget/custom_login_body.dart';
import 'package:voice_chat_app/view/widget/shared/custom_gradient.dart';
import 'package:voice_chat_app/view/widget/shared/custom_text.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return CustomGradient(
      widget: Scaffold(
        bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
            child: CustomText(
              text:
                  "By Signing up/Logging in, you agree to Tembo chat privacy policy and Terms of Service",
              color: AppColors.white,
              textAlign: TextAlign.center,
              fontSize: 11.sp,
              isVisible: true,
              decorationColor: AppColors.white,
              fontWeight: FontWeight.w300,
              isUnderLine: true,
            )),
        backgroundColor: AppColors.transparent,
        body: const CustomLoginBody(),
      ),
    );
  }
}
