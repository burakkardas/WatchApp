import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.buttonText, required this.onTap});

  final Widget buttonText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: _decoration(),
          child: Center(
            child: buttonText,
          ),
        ),
      );

  BoxDecoration _decoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        transform: const GradientRotation(30),
        colors: [
          Get.theme.primaryColor,
          const Color(0xFF8743FF),
        ],
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
