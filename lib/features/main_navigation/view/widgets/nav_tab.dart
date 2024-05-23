import 'package:droni/constants/app_colors.dart';
import 'package:droni/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavTab extends StatelessWidget {
  const NavTab({
    super.key,
    required this.iconPath,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String iconPath;
  final String text;
  final bool isSelected;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                isSelected ? AppColors.droniGray800 : AppColors.droniGray400,
                BlendMode.srcIn,
              ),
            ),
            Text(
              text,
              style: system11.copyWith(
                color: isSelected
                    ? AppColors.droniGray800
                    : AppColors.droniGray400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
