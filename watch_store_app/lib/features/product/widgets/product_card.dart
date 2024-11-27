import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_store_app/features/product/view/product_view.dart';
import 'package:watch_store_app/models/product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => Get.to(ProductView(
          product: product,
        )),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: _decoration(),
            child: _content(context),
          ),
        ),
      );

  Padding _content(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _productImage(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            product.name,
            style: Get.textTheme.labelLarge,
          ),
          Text(product.company),
          const Spacer(),
          Text(
            product.price,
            style: Get.textTheme.labelMedium,
          ),
        ],
      ),
    );
  }

  Container _productImage() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: product.color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        product.imagePath,
      ),
    );
  }

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
