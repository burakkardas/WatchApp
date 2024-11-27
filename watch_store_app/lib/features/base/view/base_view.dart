import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_store_app/core/controller/navbar_controller.dart';
import 'package:watch_store_app/core/controller/product_controller.dart';
import 'package:watch_store_app/core/widgets/navbar/app_navbar.dart';
import 'package:watch_store_app/features/home/view/home_view.dart';
import 'package:watch_store_app/features/order/view/order_view.dart';

class BaseView extends StatelessWidget {
  BaseView({super.key});

  final NavbarController controller = Get.put(NavbarController());
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) => Scaffold(
        body: PageView(
          controller: controller.pageController,
          children: [
            const HomeView(),
            OrderView(),
          ],
        ),
        bottomNavigationBar: AppNavbar(),
      );
}
