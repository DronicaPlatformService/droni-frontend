import 'dart:math';

import 'package:droni/api/generated/openAPI.models.swagger.dart';
import 'package:droni/features/user_home/view/widgets/drone_content.dart';
import 'package:droni/features/user_home/view/widgets/use_case_guide_item.dart';
import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  void _onBackTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => _onBackTap(context),
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(
          '타이틀',
          style: system03.copyWith(
            color: AppColors.droniGray800,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: GridView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.14,
          ),
          itemBuilder: (context, index) => UseCaseGuideItem(
            subTitle: index % 2 == 0 ? '일반사용자' : '조종사',
            article: ArticleSummaryResponse(
              articleImageUri:
                  'https://picsum.photos/id/${Random().nextInt(20)}/160/120',
              articleSubject: 'test',
            ),
          ),
        ),
      ),
    );
  }
}
