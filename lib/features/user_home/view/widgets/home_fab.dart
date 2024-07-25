import 'package:flutter/material.dart';

import 'package:droni/shared/widgets/svg_icon.dart';

class HomeFab extends StatelessWidget {
  const HomeFab({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: const Color(0xFF1660FF),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      extendedPadding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      label: const Text(
        '견적요청',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      icon: const SvgIcon(
        icon: 'assets/image/icon/assignment_add.svg',
        width: 24,
        color: Colors.white,
      ),
      onPressed: () => {},
    );
  }
}
