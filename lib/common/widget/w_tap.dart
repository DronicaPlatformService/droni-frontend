import 'package:flutter/material.dart';

class Tap extends StatelessWidget {
  final void Function() onTap;
  final void Function()? onLongPress;
  final Widget child;

  const Tap(
      {super.key, required this.onTap, required this.child, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onTap,
        onLongPress: onLongPress,
        child: child,
      ),
    );
  }
}
