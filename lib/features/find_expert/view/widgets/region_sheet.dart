import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegionSheet extends StatefulWidget {
  RegionSheet({super.key});

  @override
  State<RegionSheet> createState() => _RegionSheetState();
}

class _RegionSheetState extends State<RegionSheet> {
  final List<String> _region = [
    '전국',
    '서울',
    '세종',
    '강원',
    '인천',
    '경기',
    '충북',
    '충남',
    '경북',
    '대전',
    '대구',
    '전북',
    '경남',
    '울산',
    '광주',
    '부산'
  ];

  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6, left: 20, right: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 45,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 32,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.droniGray300,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
          const Gap(14),
          Text(
            '주소',
            style: system05.copyWith(
              color: AppColors.droniGray800,
            ),
          ),
          const Gap(12),
          Expanded(
            child: ListView.builder(
              itemCount: _region.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (_selectedIndex == index) {
                        _selectedIndex = -1;
                        return;
                      }

                      _selectedIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _region[index],
                            style: system08.copyWith(
                              color: _selectedIndex == index
                                  ? AppColors.droniBlue500
                                  : AppColors.droniGray600,
                            ),
                          ),
                          if (index != 0)
                            const SvgIcon(
                              icon: "assets/image/icon/chevron_right.svg",
                            )
                        ],
                      ),
                      Divider(),
                      if (_selectedIndex == index)
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '서울 전체',
                                style: system08.copyWith(
                                  color: AppColors.droniBlue400,
                                ),
                              ),
                              Divider(),
                              Text(
                                '강남구',
                                style: system08.copyWith(
                                  color: AppColors.droniBlue400,
                                ),
                              ),
                              Divider(),
                              Text(
                                '강동구',
                                style: system08.copyWith(
                                  color: AppColors.droniBlue400,
                                ),
                              ),
                              Divider(),
                              Text(
                                '강북구',
                                style: system08.copyWith(
                                  color: AppColors.droniBlue400,
                                ),
                              ),
                              Divider(),
                              Text(
                                '강서구',
                                style: system08.copyWith(
                                  color: AppColors.droniBlue400,
                                ),
                              ),
                              Divider(),
                              Text(
                                '관악구',
                                style: system08.copyWith(
                                  color: AppColors.droniBlue400,
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
