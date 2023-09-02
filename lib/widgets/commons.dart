import 'package:flutter/material.dart';
import 'package:funda_test/config/app_colors.dart';

class Separator extends StatelessWidget {
  const Separator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Container(
        height: 0.2,
        color: AppColors.lightGrey,
      ),
    );
  }
}
