import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:watch_store_app/core/controller/navbar_controller.dart';

class AppNavbar extends StatelessWidget {
  AppNavbar({super.key});

  final NavbarController controller = Get.find();
  @override
  Widget build(BuildContext context) => Container(
        decoration: _navbarBackground(),
        child: _content(),
      );

  GNav _content() {
    return GNav(
      activeColor: Get.theme.primaryColorDark,
      color: Get.theme.hintColor,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
          onPressed: () {
            controller.changeIndex(0);
          },
        ),
        GButton(
          icon: Icons.shopping_bag,
          text: 'Order',
          onPressed: () {
            controller.changeIndex(1);
          },
        ),
      ],
    );
  }

  BoxDecoration _navbarBackground() {
    return BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        blurRadius: 5,
        color: Colors.black.withOpacity(.1),
      )
    ]);
  }
}
