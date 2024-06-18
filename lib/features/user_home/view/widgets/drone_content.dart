import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DroneContent extends StatelessWidget {
  const DroneContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('드론관련 콘텐츠', style: system03),
                SvgIcon(icon: 'assets/image/icon/chevron_right.svg')
              ],
            ),
          ),
          const Gap(12),
          SizedBox(
            height: 186,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                width: 132,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 132,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    const Gap(12),
                    Text(
                      '드론콘텐츠 제목은 2줄까지 노출합니다!',
                      style: system08.copyWith(color: AppColors.droniGray600),
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const Gap(8),
              itemCount: 3,
            ),
          )
        ],
      ),
    );
  }
}
