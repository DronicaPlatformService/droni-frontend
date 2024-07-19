import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';

import 'package:droni/features/chat/view/widgets/chat_list_card.dart';
import 'package:droni/features/chat/view/widgets/chat_list_tab_bar.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              titleSpacing: 13,
              title: Text(
                '채팅',
                style: system03.copyWith(
                  color: AppColors.droniGray800,
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 13, bottom: 13),
                  child: SvgIcon(
                    icon: 'assets/image/icon/notification_unread_true.svg',
                    height: 26,
                  ),
                )
              ],
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: ChatListTabBar(),
            )
          ];
        },
        body: TabBarView(
          children: [
            ListView.separated(
              itemCount: 2,
              itemBuilder: (context, index) => ChatListCard(
                isReviewRequired: index % 2 != 0,
              ),
              separatorBuilder: (context, index) => const Gap(8),
            ),
            ListView.separated(
              itemCount: 2,
              itemBuilder: (context, index) => const ChatListCard(
                isReviewRequired: false,
              ),
              separatorBuilder: (context, index) => const Gap(8),
            ),
            ListView.separated(
              itemCount: 2,
              itemBuilder: (context, index) => const ChatListCard(
                isReviewRequired: true,
              ),
              separatorBuilder: (context, index) => const Gap(8),
            ),
          ],
        ),
      ),
    );
  }
}
