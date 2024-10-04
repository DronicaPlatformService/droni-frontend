import 'package:droni/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.droniGray300),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        child: child,
      ),
    );
  }
}
