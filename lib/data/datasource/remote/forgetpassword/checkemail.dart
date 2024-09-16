import '../../../../core/class/crud.dart';
import '../../../../core/sevices/linkapi.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);
  postData(String email) async {
    var response = await crud.postData(AppLinks.checkEmail, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
