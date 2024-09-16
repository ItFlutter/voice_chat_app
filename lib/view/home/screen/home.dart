import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_chat_app/core/functions/alert_exit_app.dart';
import '../controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
        drawer: const Drawer(),
        bottomNavigationBar: GetBuilder<HomeController>(
          builder: (controller) => BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 5,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    controller.pages.length,
                    (index) {
                      return Container();
                    },
                  ))),
        ),
        body: GetBuilder<HomeController>(
          builder: (controller) => WillPopScope(
              onWillPop: alertExitApp,
              child: controller.pages[controller.currentPage]),
        ));
  }
}
