import 'package:flutter/material.dart';

final defaultTheme = ThemeData(
  fontFamily: 'SpoqaHanSansNeo',
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  highlightColor: Colors.transparent,
);

final lightTheme = defaultTheme.copyWith();
final darkTheme = defaultTheme.copyWith();
