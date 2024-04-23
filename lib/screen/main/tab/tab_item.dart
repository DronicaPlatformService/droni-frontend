import 'package:flutter/material.dart';

import 'package:droni/common/common.dart';
import 'package:droni/screen/main/tab/home/f_home.dart';

enum TabItem {
  home('home', '홈', HomeFragment()),
  findPilots('person_search', '파일럿 찾기', HomeFragment()),
  estimates('assignment', '견적', HomeFragment()),
  chatting('sms', '채팅', HomeFragment()),
  myPage('person', '마이페이지', HomeFragment());
  // favorite(Icons.star, '즐겨찾기', FavoriteFragment(isShowBackButton: false));

  final String icon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.icon, this.tabName, this.firstPage);

  BottomNavigationBarItem toNavigationBarItem(BuildContext context,
      {required bool isActivated}) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        'assets/image/icon/$icon.svg',
        colorFilter: ColorFilter.mode(
          isActivated ? Colors.black : const Color(0xff9ea1ac),
          BlendMode.srcIn,
        ),
      ),
      label: tabName,
    );
  }
}
