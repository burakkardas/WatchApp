import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:watch_store_app/constants/enum/image_enum.dart';
import 'package:watch_store_app/constants/extension/image_enum_extension.dart';
import 'package:watch_store_app/core/controller/product_controller.dart';
import 'package:watch_store_app/core/widgets/app_button.dart';
import 'package:watch_store_app/features/product/widgets/product_color.dart';
import 'package:watch_store_app/features/product/widgets/product_details.dart';
import 'package:watch_store_app/models/product_model.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key, required this.product});

  final Product product;
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
              _appBar(),
              Expanded(
                child: Image.asset(
                  product.imagePath,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: Get.textTheme.bodyLarge,
                    ),
                    Text(
                      '(With solo loop)',
                      style: Get.textTheme.headlineMedium,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    const ProductColor(),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    const ProductDetails(),
                    const Spacer(),
                    AppButton(
                      buttonText: _buttonText(product.price),
                      onTap: () {
                        productController.addProduct(product);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _buttonText(String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          ImageEnum.shop_icon.getPath(false),
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        Text(
          'Add to Cart | $price',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Row _appBar() {
    return Row(
      children: [
        IconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset(
            ImageEnum.arrow_icon.getPath(false),
            color: Get.theme.primaryColorDark,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            ImageEnum.hearth_icon.getPath(false),
            color: Get.theme.primaryColorDark,
          ),
        ),
      ],
    );
  }
}
