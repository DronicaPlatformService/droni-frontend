import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ExpertCard extends StatelessWidget {
  const ExpertCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          const SizedBox(
            width: 40,
            height: 40,
            child: CircleAvatar(),
          ),
          const Gap(8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '김철수',
                style: system05.copyWith(
                  color: AppColors.droniGray800,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.yellow),
                  Text(
                    '5.0',
                    style: system07.copyWith(
                      color: AppColors.droniGray800,
                    ),
                  ),
                  const Gap(3),
                  Text(
                    '(2건)',
                    style: system10.copyWith(color: AppColors.droniGray500),
                  ),
                  const Gap(8),
                  Text(
                    '방제 횟수',
                    style: system08.copyWith(color: AppColors.droniGray600),
                  ),
                  const Gap(2),
                  Text(
                    '2',
                    style: system07.copyWith(color: AppColors.droniGray600),
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
