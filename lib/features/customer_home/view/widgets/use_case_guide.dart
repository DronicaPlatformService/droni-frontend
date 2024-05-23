import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class UseCaseGuide extends StatelessWidget {
  const UseCaseGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '드로니 활용백서',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Gap(12),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const Gap(10),
                    Text(
                      '일반 사용자',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                    const Gap(2),
                    Text(
                      '드론콘텐츠 제목은 2줄까지 노출합니다!',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    )
                  ],
                ),
              ),
              const Gap(12),
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const Gap(10),
                    Text(
                      '일반 사용자',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                    const Gap(2),
                    Text(
                      '드론콘텐츠 제목은 2줄까지 노출합니다!',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Gap(20),
          Container(
            height: 44,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '더보러 가기',
                  style: TextStyle(color: Colors.grey[900]),
                ),
                SvgPicture.asset(
                  'assets/image/icon/chevron_right.svg',
                  width: 20,
                  colorFilter: ColorFilter.mode(
                    Colors.grey[900]!,
                    BlendMode.srcIn,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
