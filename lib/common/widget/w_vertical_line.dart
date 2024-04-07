import 'package:flutter/material.dart';

import '../common.dart';

class Line extends StatelessWidget {
  const Line({
    super.key,
    this.color,
    this.width = 1,
    this.margin,
  });

  final Color? color;
  final EdgeInsets? margin;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      color: color ?? context.appColors.divider,
      width: width,
    );
  }
}
