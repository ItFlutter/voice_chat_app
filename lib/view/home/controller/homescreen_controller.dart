import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:voice_chat_app/core/class/sqldb.dart';
import 'package:voice_chat_app/core/class/status_request.dart';

class HomeScreenController extends GetxController {
  SqlDb sqlDb = Get.find();
  StatusRequest statusRequest = StatusRequest.none;
  late final TextEditingController search;
}
