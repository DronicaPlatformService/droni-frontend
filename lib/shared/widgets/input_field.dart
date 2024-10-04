import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/app_colors.dart';
import '../constants/text_style.dart';
import 'svg_icon.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    this.prefix,
    this.suffix,
  });

  final TextEditingController controller;
  final Widget? prefix, suffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.droniGray200),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              if (prefix != null) prefix!,
              if (prefix != null) const Gap(6),
              Flexible(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: '조종사를 검색해보세요.',
                    hintStyle: system08.copyWith(
                      color: AppColors.droniGray400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              if (suffix != null) suffix!,
            ],
          ),
        ),
      ),
    );
  }
}
