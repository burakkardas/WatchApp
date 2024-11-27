import 'package:flutter/material.dart';
import 'package:watch_store_app/features/product/widgets/product_card.dart';
import 'package:watch_store_app/models/product_model.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Expanded(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: size.height * 0.01,
          crossAxisSpacing: size.width * 0.02,
          mainAxisExtent: size.height * 0.25,
        ),
        children: [
          ...ProductModel().repeatedProducts.map(
                (product) => ProductCard(product: product),
              )
        ],
      ),
    );
  }
}
