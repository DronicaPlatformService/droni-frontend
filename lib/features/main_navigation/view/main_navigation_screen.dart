import 'package:droni/features/customer_home/view/widgets/home_app_bar.dart';
import 'package:droni/features/customer_home/view/widgets/home_fab.dart';
import 'package:droni/features/main_navigation/view/widgets/nav_tab.dart';
import 'package:flutter/material.dart';
import 'package:droni/features/customer_home/view/home_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex == 0 ? const HomeAppBar() : null,
      body: SafeArea(
        child: Stack(
          children: [
            Offstage(
              offstage: _selectedIndex != 0,
              child: const CustomerHomeScreen(),
            ),
            Offstage(
              offstage: _selectedIndex != 1,
              child: const Text('조종사 찾기'),
            ),
            Offstage(
              offstage: _selectedIndex != 2,
              child: const Text('견적'),
            ),
            Offstage(
              offstage: _selectedIndex != 3,
              child: const Text('채팅'),
            ),
            Offstage(
              offstage: _selectedIndex != 4,
              child: const Text('마이페이지'),
            ),
          ],
        ),
      ),
      floatingActionButton: _selectedIndex == 0 ? const HomeFab() : null,
      bottomNavigationBar: BottomAppBar(
        height: 55,
        padding: EdgeInsets.zero,
        surfaceTintColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavTab(
              text: '홈',
              iconPath: 'assets/image/icon/home.svg',
              isSelected: _selectedIndex == 0,
              onTap: () => _onTap(0),
            ),
            NavTab(
              text: '조종사 찾기',
              iconPath: 'assets/image/icon/person_search.svg',
              isSelected: _selectedIndex == 1,
              onTap: () => _onTap(1),
            ),
            NavTab(
              text: '견적',
              iconPath: 'assets/image/icon/assignment.svg',
              isSelected: _selectedIndex == 2,
              onTap: () => _onTap(2),
            ),
            NavTab(
              text: '채팅',
              iconPath: 'assets/image/icon/sms.svg',
              isSelected: _selectedIndex == 3,
              onTap: () => _onTap(3),
            ),
            NavTab(
              text: '마이페이지',
              iconPath: 'assets/image/icon/person.svg',
              isSelected: _selectedIndex == 4,
              onTap: () => _onTap(4),
            ),
          ],
        ),
      ),
    );
  }
}
