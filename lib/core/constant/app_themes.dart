import "package:flutter/material.dart";
import 'app_colors.dart';

ThemeData darkTheme = ThemeData.light().copyWith(
  focusColor: Colors.yellow,
  colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xff000000)),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.transparent,
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.white),
    titleTextStyle: TextStyle(
      // color: AppColors.primaryColor,
      color: AppColors.white,
      fontWeight: FontWeight.bold,
      fontSize: 24,
      // fontFamily: "Muli"
    ),
  ),
);
// import "package:flutter/material.dart";
// import 'app_colors.dart';

// ThemeData themeEnglish = ThemeData(
//     appBarTheme: const AppBarTheme(
//       // color: AppColor.primaryColor,
//       // foregroundColor: AppColor.fourthColor,
//       // backgroundColor: Colors.grey[50],
//       backgroundColor: AppColors.primaryColor,
//       centerTitle: true,
//       elevation: 0,
//       iconTheme: IconThemeData(color: AppColors.backgroundColor),
//       titleTextStyle: TextStyle(
//         // color: AppColors.primaryColor,
//         color: AppColors.white,
//         fontWeight: FontWeight.bold,
//         fontSize: 24,
//         // fontFamily: "Muli"
//       ),
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: AppColors.primaryColor,
//       // foregroundColor: AppColors.fourthColor
//     ),
//     fontFamily: "Muli",
//     primarySwatch: AppColors.blue,
//     textTheme: TextTheme(
//       headline1: const TextStyle(
//           fontWeight: FontWeight.w600, fontSize: 20, color: AppColors.black),
//       headline2: const TextStyle(
//           fontWeight: FontWeight.w600, fontSize: 28, color: AppColors.black),
//       bodyText1: TextStyle(
//           height: 1.7,
//           color: AppColors.grey,
//           fontWeight: FontWeight.w500,
//           fontSize: 15),
//       bodyText2: TextStyle(height: 1.7, color: AppColors.grey, fontSize: 15),
//     ));
// ThemeData themeArabic = ThemeData(
//     appBarTheme: const AppBarTheme(
//       // backgroundColor: Colors.grey[50],
//       backgroundColor: AppColors.primaryColor,

//       centerTitle: true,
//       elevation: 0,
//       iconTheme: IconThemeData(color: AppColors.primaryColor),
//       titleTextStyle: TextStyle(
//         // color: AppColors.primaryColor,
//         color: AppColors.white,
//         fontWeight: FontWeight.bold,
//         fontSize: 24,
//         // fontFamily: "PlayfairDisplay"
//       ),
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//         backgroundColor: AppColors.primaryColor),
//     // fontFamily: "PlayfairDisplay",
//     primarySwatch: AppColors.blue,
//     textTheme: TextTheme(
//       headline1: const TextStyle(
//           fontWeight: FontWeight.w600, fontSize: 20, color: AppColors.black),
//       headline2: const TextStyle(
//           fontWeight: FontWeight.w600, fontSize: 28, color: AppColors.black),
//       bodyText1: TextStyle(
//           height: 1.7,
//           color: AppColors.grey,
//           fontWeight: FontWeight.w500,
//           fontSize: 15),
//       bodyText2: TextStyle(height: 1.7, color: AppColors.grey, fontSize: 15),
//     ));
