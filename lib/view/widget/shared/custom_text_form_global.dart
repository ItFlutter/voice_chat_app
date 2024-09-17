import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_chat_app/core/constant/app_colors.dart';

class CustomTextFormGlobal extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController myController;
  final String? Function(String?)? validator;
  final bool isNumber;
  final bool? obscureText;
  final Function()? onTapIcon;
  const CustomTextFormGlobal(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      required this.myController,
      required this.validator,
      required this.isNumber,
      this.obscureText,
      this.onTapIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText == null || obscureText == false ? false : true,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      style: const TextStyle(color: AppColors.black),
      validator: validator,
      controller: myController,
      cursorColor: AppColors.black,
      decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.greyIcons,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 14.sp,
              color: AppColors.greyIcons,
              fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50),
          )),
    );
  }
}
