import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      toolbarHeight: 52,
      collapsedHeight: 52,
      leadingWidth: 123,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20, top: 13, bottom: 13),
        child: SvgPicture.asset(
          'assets/image/logo_with_text.svg',
          width: 103,
          height: 24,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20, top: 13, bottom: 13),
          child: SvgPicture.asset(
            'assets/image/icon/notification_unread_true.svg',
            height: 26,
          ),
        )
      ],
    );
  }
}
