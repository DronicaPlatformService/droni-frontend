import 'package:flutter/material.dart';

class EmptyExpanded extends StatelessWidget {
  final int flex;

  const EmptyExpanded({super.key, this.flex = 1});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(),
    );
  }
}
