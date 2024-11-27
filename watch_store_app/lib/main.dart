import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:watch_store_app/core/theme/app_theme.dart';
import 'package:watch_store_app/features/base/view/base_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Watch Store App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.currentTheme,
        home: BaseView(),
      );
}
