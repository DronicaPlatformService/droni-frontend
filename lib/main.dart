import 'package:flutter/material.dart';
import 'package:droni/shared/themes/app_theme.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'features/authentication/view/login_screen.dart';
import 'package:droni/features/main_navigation/view/main_navigation_screen.dart';

void main() async {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  late final FlutterSecureStorage storage;
  @override
  void initState() {
    storage = const FlutterSecureStorage();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Droni',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        // home: const LoginScreen(),
        home: const MainNavigationScreen());
  }
}
