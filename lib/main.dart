import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:voice_chat_app/routes.dart';
import 'bindings/initial_bindings.dart';
import 'core/localization/change_local.dart';
import 'core/localization/translation.dart';
import 'core/sevices/sevices.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    // MyServices myServices = Get.find();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          initialBinding: InitialBindings(),
          locale: controller.language,
          translations: MyTranslation(),
          debugShowCheckedModeBanner: false,
          getPages: routes,
          theme: controller.appTheme,
          // themeMode: ThemeMode.light,
        );
      },
    );
  }
}
