import 'package:flutter/material.dart';

import 'package:droni/shared/widgets/svg_icon.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 123,
      leading: const Padding(
        padding: EdgeInsets.only(left: 20, top: 13, bottom: 13),
        child: SvgIcon(
          icon: 'assets/image/logo_with_text.svg',
          width: 103,
          height: 24,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(52);
}
