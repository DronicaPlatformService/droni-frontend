import 'package:droni/api/generated/openAPI.swagger.dart';
import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class UseCaseGuideItem extends StatelessWidget {
  const UseCaseGuideItem(
      {super.key, required this.subTitle, required this.article});

  final String subTitle;
  final ArticleSummaryResponse article;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.network(article.articleImageUri ?? ''),
        ),
        const Gap(10),
        Text(
          subTitle,
          style: system10.copyWith(color: AppColors.droniGray500),
        ),
        const Gap(2),
        Text(
          article.articleSubject ?? 'error',
          overflow: TextOverflow.clip,
          style: system08.copyWith(color: AppColors.droniGray600),
        )
      ],
    );
  }
}
