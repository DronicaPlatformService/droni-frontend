// import 'package:droni/theme/custom_theme.dart';
import 'package:droni/features/main_navigation/view/main_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:droni/themes/app_theme.dart';
import 'features/authentication/view/login_screen.dart';
// import 'package:nav/nav.dart';

// import 'common/data/preference/app_preferences.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  // await AppPreferences.init();

  runApp(const App());

  // runApp(
  //   EasyLocalization(
  //     supportedLocales: const [Locale('en'), Locale('ko')],
  //     fallbackLocale: const Locale('en'),
  //     path: 'assets/translations',
  //     useOnlyLangCode: true,
  //     child: const App(),
  //   ),
  // );
}

class App extends StatefulWidget {
  // static final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  ///light, dark 테마가 준비되었고, 시스템 테마를 따라가게 하려면 해당 필드를 제거 하시면 됩니다.
  // static const defaultTheme = CustomTheme.light;
  // static bool isForeground = true;

  const App({super.key});

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // navigatorKey: App.navigatorKey,
      // localizationsDelegates: context.localizationDelegates,
      // supportedLocales: context.supportedLocales,
      // locale: context.locale,
      title: 'Droni',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const MainNavigationScreen(),

      // theme: context.themeType.themeData,
      // home: const LoginScreen(),
    );

    // return CustomThemeApp(
    //   child: Builder(builder: (context) {
    //     return       }),
    // );
  }

  // @override
  // void didChangeAppLifecycleState(AppLifecycleState state) {
  //   switch (state) {
  //     case AppLifecycleState.resumed:
  //       App.isForeground = true;
  //       break;
  //     case AppLifecycleState.inactive:
  //       break;
  //     case AppLifecycleState.paused:
  //       App.isForeground = false;
  //       break;
  //     case AppLifecycleState.detached:
  //       break;
  //     case AppLifecycleState.hidden: //Flutter 3.13 이하 버전을 쓰신다면 해당 라인을 삭제해주세요.
  //       break;
  //   }
  //   super.didChangeAppLifecycleState(state);
  // }
}
