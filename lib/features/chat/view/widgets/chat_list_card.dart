import 'package:droni/features/chat/view/chat_screen.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';

class ChatListCard extends StatelessWidget {
  const ChatListCard({super.key, required this.isReviewRequired});

  final bool isReviewRequired;

  void _cardOnTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ChatScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _cardOnTap(context),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 34,
                  height: 34,
                  child: CircleAvatar(),
                ),
                const Gap(8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '김철수',
                      style: system07.copyWith(
                        color: AppColors.droniGray800,
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Text(
                            '★',
                            style: system10.copyWith(
                              color: Colors.yellow,
                            ),
                          ),
                          const Gap(2),
                          Text(
                            '4.9',
                            style: system11.copyWith(
                              color: AppColors.droniGray700,
                            ),
                          ),
                          const VerticalDivider(
                            color: AppColors.droniGray200,
                          ),
                          Text(
                            '충정특별시 서산면',
                            style: system11.copyWith(
                              color: AppColors.droniGray500,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '네. 그럼 농장 위치 부탁드립니다!',
                  style: system10.copyWith(
                    color: AppColors.droniGray700,
                  ),
                ),
                Text(
                  '2024.06.02',
                  style: system12.copyWith(
                    color: AppColors.droniGray400,
                  ),
                )
              ],
            ),
            const Gap(8),
            const Divider(),
            const Gap(8),
            if (!isReviewRequired)
              Text(
                '입찰가 35만원',
                style: system07.copyWith(
                  color: AppColors.droniBlue600,
                ),
              ),
            if (isReviewRequired)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColors.droniGray300,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '리뷰작성',
                  textAlign: TextAlign.center,
                  style: system07.copyWith(
                    color: AppColors.droniGray800,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
