import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voice_chat_app/core/constant/app_image_asset.dart';
import 'package:voice_chat_app/core/functions/valid_input.dart';
import 'package:voice_chat_app/view/auth/login/controller/login_controller.dart';
import 'package:voice_chat_app/view/auth/login/widget/custom_circle_icon_sigin_methods.dart';
import 'package:voice_chat_app/view/auth/widget/custom_have_or_not_account.dart';
import 'package:voice_chat_app/view/auth/widget/custom_title_auth.dart';
import 'package:voice_chat_app/view/widget/shared/custom_buttom_gradient_and_shadow.dart';
import 'package:voice_chat_app/view/widget/shared/custom_text.dart';
import 'package:voice_chat_app/view/widget/shared/custom_text_form_global.dart';

class CustomLoginBody extends StatelessWidget {
  const CustomLoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(child: CustomTitleAuth()),
          GetBuilder<LoginController>(
            builder: (controller) {
              return Expanded(
                flex: 2,
                child: ListView(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: CustomTextFormGlobal(
                          hintText: "Enter your email",
                          prefixIcon: Icons.mail_outline,
                          myController: controller.email,
                          validator: (String? value) {
                            return validInput(value!, 6, 100, "email");
                          },
                          isNumber: false),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: CustomTextFormGlobal(
                          hintText: "Password",
                          prefixIcon: Icons.lock_outlined,
                          obscureText: true,
                          myController: controller.password,
                          validator: (String? value) {
                            return validInput(value!, 4, 255, "password");
                          },
                          isNumber: false),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                        child: CustomText(
                      text: "Forget Password?",
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                    )),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 5.h),
                        child: CustomButtonGradientAndShadow(
                          text: "Login",
                          onPressed: () {},
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomCircleIconSiginMethods(
                        assetName: AppImageAsset.googleIcon),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: InkWell(
                          onTap: () {},
                          child: const CustomHaveORNotAccount(
                              text: "Don't have an account? ",
                              buttonText: "Sign Up")),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
