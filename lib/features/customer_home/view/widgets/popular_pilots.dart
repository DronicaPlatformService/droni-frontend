import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PopularPilots extends StatelessWidget {
  const PopularPilots({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '인기있는 조종사들',
                  style: system03.copyWith(
                    color: AppColors.droniGray800,
                  ),
                ),
                const SvgIcon(
                  icon: 'assets/image/icon/chevron_right.svg',
                  width: 26,
                  color: AppColors.droniGray400,
                )
              ],
            ),
          ),
          const Gap(12),
          SizedBox(
            height: 88,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                children: [
                  const SizedBox(
                    width: 64,
                    height: 64,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDy9bXUES6Lh_0aZMVd1HgHfv8OKhh4WaAdby5wFHxDQ&s',
                      ),
                    ),
                  ),
                  const Gap(6),
                  Text(
                    '조종사1',
                    style: system11.copyWith(color: AppColors.droniGray600),
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const Gap(12),
            ),
          ),
        ],
      ),
    );
  }
}
