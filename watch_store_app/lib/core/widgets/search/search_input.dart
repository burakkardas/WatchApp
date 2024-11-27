import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:watch_store_app/constants/enum/image_enum.dart';
import 'package:watch_store_app/constants/extension/image_enum_extension.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) => Expanded(
        child: TextField(
          cursorColor: Get.theme.primaryColorDark,
          decoration: InputDecoration(
            prefixIcon: _prefixIcon(),
            hintText: 'Search Product',
          ),
        ),
      );

  Padding _prefixIcon() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SvgPicture.asset(
        ImageEnum.search_icon.getPath(false),
        color: Get.theme.primaryColorDark,
      ),
    );
  }
}
