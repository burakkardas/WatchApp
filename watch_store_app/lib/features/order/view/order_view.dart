import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_store_app/core/controller/product_controller.dart';
import 'package:watch_store_app/features/order/widgets/order_item.dart';

class OrderView extends StatelessWidget {
  OrderView({super.key});

  final ProductController productController = Get.find();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text('Order'),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: productController.productList.length,
                    itemBuilder: (context, index) {
                      return OrderItem(
                        product: productController.productList[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
