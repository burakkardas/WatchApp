import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductColor extends StatelessWidget {
  const ProductColor({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Colors',
            style: Get.textTheme.labelLarge,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              _colorItem(const Color(0xFFF0F2F2), 'Silver', false),
              _colorItem(const Color(0xFFF25745), 'Bright Orange', true),
              _colorItem(const Color(0xFFFAF6F2), 'Starlight', false),
            ],
          ),
        ],
      );

  IntrinsicWidth _colorItem(Color color, String text, bool isSelected) {
    return IntrinsicWidth(
      child: Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? Get.theme.primaryColor : Get.theme.hintColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  text,
                  style: Get.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
