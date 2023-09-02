import 'package:flutter/material.dart';
import 'package:funda_test/config/app_colors.dart';
import 'package:funda_test/config/app_text.dart';

class IconDesc extends StatelessWidget {
  final String value;
  final IconData icon;
  final Color? color;

  const IconDesc({
    required this.value,
    required this.icon,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color ?? AppColors.lightGrey,
        ),
        const SizedBox(width: 8),
        Text(
          value,
          style: AppText.default15Regular,
        ),
      ],
    );
  }
}
