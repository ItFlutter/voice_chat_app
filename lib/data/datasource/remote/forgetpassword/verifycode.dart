import '../../../../core/class/crud.dart';
import '../../../../core/sevices/linkapi.dart';

class VerifyCodeForgetPasswordData {
  Crud crud;
  VerifyCodeForgetPasswordData(this.crud);
  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLinks.verifyCodeForgetPassword, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
