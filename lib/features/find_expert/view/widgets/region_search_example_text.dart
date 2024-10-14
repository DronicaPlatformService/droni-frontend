import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegionSearchExampleText extends StatelessWidget {
  const RegionSearchExampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '이렇게 검색해보세요',
          style: system07.copyWith(color: AppColors.droniGray800),
        ),
        const Gap(16),
        Text(
          '도로명 + 건물 번호',
          style: system09.copyWith(
            color: AppColors.droniGray800,
          ),
        ),
        const Gap(8),
        Text(
          '서초로 38번길 12',
          style: system09.copyWith(
            color: AppColors.droniGray600,
          ),
        ),
        const Gap(16),
        Text(
          '지역명 (동 / 리) + 번지',
          style: system09.copyWith(
            color: AppColors.droniGray800,
          ),
        ),
        const Gap(8),
        Text(
          '서초로 1498-5',
          style: system09.copyWith(
            color: AppColors.droniGray600,
          ),
        ),
        const Gap(16),
        Text(
          '지역명 (동 / 리) + 건물명',
          style: system09.copyWith(
            color: AppColors.droniGray800,
          ),
        ),
        const Gap(8),
        Text(
          '서초동 OO 빌딩',
          style: system09.copyWith(
            color: AppColors.droniGray600,
          ),
        ),
      ],
    );
  }
}
