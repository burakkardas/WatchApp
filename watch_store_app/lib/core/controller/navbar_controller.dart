import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
    pageController.animateToPage(currentIndex.value,
        duration: const Duration(milliseconds: 250), curve: Curves.linear);
  }
}
