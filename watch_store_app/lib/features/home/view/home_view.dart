import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_store_app/core/widgets/search/search_view.dart';
import 'package:watch_store_app/features/home/widgets/product_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _appBar(),
              SizedBox(height: size.height * 0.02),
              const SearchView(),
              SizedBox(height: size.height * 0.02),
              const ProductListView(),
            ],
          ),
        ),
      ),
    );
  }

  Text _appBar() {
    return Text(
      'Find your suitable watch now.',
      style: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        color: Get.theme.primaryColorDark,
      ),
    );
  }
}
