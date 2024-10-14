import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegionSearchItem extends StatelessWidget {
  const RegionSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '07718',
            style: system05.copyWith(color: AppColors.droniBlue600),
          ),
          const Gap(8),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '도로명',
                    style: system10.copyWith(
                      color: AppColors.droniGray600,
                    ),
                  ),
                  const Gap(4),
                  Text(
                    '지번',
                    style: system10.copyWith(
                      color: AppColors.droniGray600,
                    ),
                  ),
                ],
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '서울 강서구 가로공원로 173',
                    style: system10.copyWith(
                      color: AppColors.droniGray800,
                    ),
                  ),
                  const Gap(4),
                  Text(
                    '서울 강서구 가로공원로 173',
                    style: system10.copyWith(
                      color: AppColors.droniGray800,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
