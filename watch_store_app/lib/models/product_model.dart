import 'package:flutter/material.dart';
import 'package:watch_store_app/constants/enum/image_enum.dart';
import 'package:watch_store_app/constants/extension/image_enum_extension.dart';

class ProductModel {
  final Map<int, Product> products = ({
    0: Product(
      name: 'Apple Watch SE',
      company: 'Apple',
      price: '\$349.99',
      color: const Color(0xFFFFC8B7),
      imagePath: ImageEnum.apple_watch_se.getPath(true),
    ),
    1: Product(
      name: 'Galaxy Watch 4',
      company: 'Samsung',
      price: '\$249.99',
      color: const Color(0xFFFFEFE1),
      imagePath: ImageEnum.galaxy_watch_4.getPath(true),
    ),
    2: Product(
      name: 'Amazfit GTS 2',
      company: 'Amazfit',
      price: '\$199.99',
      color: const Color(0xFFFCF1F0),
      imagePath: ImageEnum.amazfit_gts.getPath(true),
    ),
    3: Product(
      name: 'Galaxy Watch 7',
      company: 'Samsung',
      price: '\$279.99',
      color: const Color(0xFFF0DEC5),
      imagePath: ImageEnum.galaxy_watch_7.getPath(true),
    ),
  });

  List<Product> get repeatedProducts => List.generate(
        12,
        (index) => products[index % products.length]!,
      );
}

class Product {
  final String name;
  final String company;
  final String price;
  final Color color;
  final String imagePath;

  Product(
      {required this.name,
      required this.company,
      required this.price,
      required this.color,
      required this.imagePath});
}
