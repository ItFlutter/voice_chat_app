import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:voice_chat_app/view/home/screen/home_screen.dart';

class HomeController extends GetxController {
  int currentPage = 0;
  List<Widget> pages = const [HomeScreen()];
  List<IconData> icons = const [
    Icons.home_outlined,
    Icons.shopping_cart_outlined,
    Icons.person_outline
  ];
  onPressedIcon(int index) {
    currentPage = index;
    update();
  }
}
