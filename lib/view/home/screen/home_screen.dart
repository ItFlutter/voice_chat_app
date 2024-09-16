import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_chat_app/core/class/handling_data_view.dart';
import 'package:voice_chat_app/view/home/controller/homescreen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(HomeController());
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) {
        return HandlingDataView(
            onRefresh: () async {},
            statusRequest: controller.statusRequest,
            widget: Container());
      },
    );
  }
}
