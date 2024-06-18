import 'package:flutter/material.dart';

final defaultTheme = ThemeData(
  fontFamily: 'SpoqaHanSansNeo',
  splashColor: Colors.transparent,
  splashFactory: NoSplash.splashFactory,
  highlightColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
  ),
  useMaterial3: false,
);

final lightTheme = defaultTheme.copyWith();
final darkTheme = defaultTheme.copyWith();
