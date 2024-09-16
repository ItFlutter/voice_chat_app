class AppLinks {
  static const String server = "http://192.168.1.101/carsstore";
  // static const String server =
  //     "https://ahmaditecommerce.000webhostapp.com//ecommerce";
  // static const String server = "http://10.0.2.2/ecommerce";
  // ================================= Images ================================== //

  static const String imagesStatic = "http://192.168.1.101/carsstore/upload";
  // static const String imagestatic =
  //     "https://ahmaditecommerce.000webhostapp.com//ecommerce/upload";
  // static const String imagestatic = "http://10.0.2.2/ecommerce/upload";
  // static const String imagecategories = "$imagestatic/carsmodels";
  // static const String imageitems = "$imagestatic/carsbrands";
  // ================================= Auth ================================== //
  static const String login = "$server/auth/login.php";
  // static const String resend = "$server/auth/resend.php";
  // ================================= ForgetPassword ================================== //
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String verifyCodeForgetPassword =
      "$server/forgetpassword/verifycode.php";
}
