import 'dart:developer';

import 'package:droni/features/main_navigation/view/main_navigation_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<void> _onNaverLoginTap() async {
    final baseUrl = dotenv.env['DRONI_BASE_URL'];
    final url = Uri.http(
      baseUrl ?? '',
      '/oauth2/authorization/naver',
      {'redirect_uri': 'droni://home'},
    );
    final result = await FlutterWebAuth2.authenticate(
      url: url.toString(),
      callbackUrlScheme: 'droni',
    );
    final params = result.split('?')[1].split('&').map((param) {
      final [key, value] = param.split('=');
      return {key: value};
    }).toList();

    const storage = FlutterSecureStorage();

    storage.write(key: 'access_token', value: params[0]['access_token']!);
    storage.write(key: 'refresh_token', value: params[1]['refresh_token']!);

    if (context.mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const MainNavigationScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgIcon(
                      icon: 'assets/image/logo.svg',
                      width: 90,
                    ),
                    Gap(24),
                    Text(
                      '당신 근처의 드로니',
                      style: system01,
                    ),
                    Gap(6),
                    Text(
                      '드로니는 드론방제 서비스 앱이에요.\n내 동네를 설정하고 시작해보세요!',
                      style: system08,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 54,
                    decoration: BoxDecoration(
                      color: const Color(0xffF9e007),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '카카오로 3초만에 시작하기',
                          textAlign: TextAlign.center,
                          style: system05,
                        ),
                      ],
                    ),
                  ),
                  const Gap(8),
                  GestureDetector(
                    onTap: () => _onNaverLoginTap(),
                    child: Container(
                      width: double.infinity,
                      height: 54,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '네이버로 시작하기',
                            textAlign: TextAlign.center,
                            style: system05,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
