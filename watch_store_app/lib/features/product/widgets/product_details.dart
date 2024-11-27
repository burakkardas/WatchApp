import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Details',
                  style: TextStyle(
                    color: Get.theme.primaryColor,
                  )),
              Divider(
                color: Get.theme.primaryColor,
                thickness: 1,
                height: 2,
                endIndent: 335,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'The aluminium case is lightweight and made from 100 percent recycled aerospace grade alloy.',
            style: Get.textTheme.headlineMedium,
          ),
        ],
      );
}
