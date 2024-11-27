import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_store_app/core/controller/product_controller.dart';
import 'package:watch_store_app/models/product_model.dart';

class OrderItem extends StatelessWidget {
  OrderItem({super.key, required this.product});

  final Product product;
  final ProductController productController = Get.find();
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          width: double.infinity,
          height: 100,
          decoration: _decoration(),
          child: Row(
            children: [
              Image.asset(
                product.imagePath,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    product.company,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    product.price,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  productController.removeProduct(product);
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      );

  BoxDecoration _decoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 212, 212, 212).withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 8,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }
}
