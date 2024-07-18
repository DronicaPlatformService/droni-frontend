import 'package:droni/api/generated/openAPI.swagger.dart';
import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UseCaseGuideItem extends StatelessWidget {
  const UseCaseGuideItem({super.key, required this.article});

  final ArticleSummaryResponse article;

  Widget skeletonLoader({
    required double width,
    required double height,
    required double radius,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: const Color.fromARGB(255, 255, 0, 0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.network(
              article.articleImageUri ?? '',
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;

                return skeletonLoader(
                  width: 151,
                  height: 120,
                  radius: 9,
                );
              },
            ),
          ),
          const Gap(10),
          Text(
            '일반 사용자',
            style: system10.copyWith(color: AppColors.droniGray500),
          ),
          const Gap(2),
          Text(
            // '드론콘텐츠 제목은 2줄까지 노출합니다!',
            article.articleSubject ?? 'e',
            overflow: TextOverflow.clip,
            style: system08.copyWith(color: AppColors.droniGray600),
          )
        ],
      ),
    );
  }
}
