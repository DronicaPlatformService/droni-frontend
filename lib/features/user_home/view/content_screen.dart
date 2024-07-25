import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:droni/shared/constants/app_colors.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  void _onBackTap(BuildContext context) {
    Navigator.of(context).pop();
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
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                decoration: const BoxDecoration(color: Colors.green),
              ),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '타이틀',
                      style: system01.copyWith(
                        color: AppColors.droniGray800,
                      ),
                    ),
                    const Gap(6),
                    Text(
                      '2024.01.01',
                      style: system08.copyWith(
                        color: AppColors.droniGray500,
                      ),
                    ),
                    const Gap(24),
                    Text(
                      '상세 내용',
                      style: system06.copyWith(
                        color: AppColors.droniGray500,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
