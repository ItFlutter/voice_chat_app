import 'package:get/get.dart';
import 'package:voice_chat_app/core/constant/app_routes.dart';
import 'package:voice_chat_app/view/auth/login/screen/login.dart';

List<GetPage<dynamic>>? routes = [
  //================================ Auth ===========================================
  GetPage(name: AppRoutes.login, page: () => const Login()),
  // // ================================= ForgetPassword ================================== //
  // GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  // GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCode()),
  // GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  // GetPage(
  //     name: AppRoutes.successResetPassword,
  //     page: () => const SuccessResetPassword()),

  // //================================ Home ===========================================
  // GetPage(name: AppRoutes.homepage, page: () => const HomePage()),
];
