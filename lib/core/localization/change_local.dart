import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_chat_app/core/constant/app_themes.dart';
import '../sevices/sevices.dart';

class LocaleController extends GetxController {
  String lang = "en";
  ThemeData appTheme = darkTheme;
  Locale? language;
  MyServices myServices = Get.find();
  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    appTheme = langcode == "ar" ? darkTheme : darkTheme;
    Get.changeTheme(appTheme);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
    update();
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      appTheme = darkTheme;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      appTheme = darkTheme;
    } else {
      language = Get.deviceLocale!;
    }
    super.onInit();
  }
}
