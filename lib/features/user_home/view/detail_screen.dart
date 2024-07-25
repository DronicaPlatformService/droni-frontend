import 'dart:math';

import 'package:flutter/material.dart';

import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';

import 'package:droni/api/generated/openAPI.models.swagger.dart';

import './content_screen.dart';
import './widgets/content_card.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  void _onBackTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  void _onContentTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ContentScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => _onBackTap(context),
          child: const Padding(
            padding: EdgeInsets.all(14.0),
            child: SvgIcon(
              icon: 'assets/image/icon/chevron_left.svg',
            ),
          ),
        ),
        title: Text(
          '타이틀',
          style: system03.copyWith(
            color: AppColors.droniGray800,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => _onContentTap(context),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.14,
            ),
            itemBuilder: (context, index) => ContentCard(
              subTitle: index % 2 == 0 ? '일반사용자' : '조종사',
              article: ArticleSummaryResponse(
                articleImageUri:
                    'https://picsum.photos/id/${Random().nextInt(20)}/160/120',
                articleSubject: 'test',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
