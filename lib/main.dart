import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:droni/shared/themes/app_theme.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:droni/features/authentication/view/login_screen.dart';
import 'package:droni/features/main_navigation/view/main_navigation_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');
  runApp(const App());
}

class GlobalVariables {
  static final GlobalKey<NavigatorState> navigationKey =
      GlobalKey<NavigatorState>();
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  bool isLoggined = false;

  @override
  void initState() {
    test();
    super.initState();
  }

  Future<void> test() async {
    const storage = FlutterSecureStorage();
    final accessToken = await storage.read(key: 'access_token');

    setState(() {
      isLoggined = accessToken != null;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: GlobalVariables.navigationKey,
      title: 'Droni',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      // home: isLoggined ? const MainNavigationScreen() : const LoginScreen(),
      // home: const LoginScreen(),
      home: const MainNavigationScreen(),
    );
  }
}
