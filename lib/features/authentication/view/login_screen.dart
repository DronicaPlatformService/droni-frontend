import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:droni/shared/constants/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  Container(
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
