import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:watch_store_app/constants/enum/image_enum.dart';
import 'package:watch_store_app/constants/extension/image_enum_extension.dart';
import 'package:watch_store_app/core/widgets/search/search_input.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) => Row(
        children: [
          const SearchInput(),
          IconButton(
            onPressed: null,
            icon: SvgPicture.asset(
              ImageEnum.menu_icon.getPath(false),
              color: Get.theme.primaryColorDark,
            ),
          )
        ],
      );
}
