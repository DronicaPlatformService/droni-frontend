import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/material.dart';

class ChatListTabBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: AppColors.droniGray200,
          ),
        ),
      ),
      child: const TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        labelColor: AppColors.droniGray900,
        unselectedLabelColor: AppColors.droniGray400,
        labelPadding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: AppColors.droniGray800,
        tabs: [
          Text('전체', style: system05),
          Text('진행중', style: system05),
          Text('방제완료', style: system05),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 35;

  @override
  // TODO: implement minExtent
  double get minExtent => 35;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
