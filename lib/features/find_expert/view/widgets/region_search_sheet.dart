import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:droni/shared/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegionSearchSheet extends StatefulWidget {
  const RegionSearchSheet({super.key});

  @override
  State<RegionSearchSheet> createState() => _RegionSearchSheetState();
}

class _RegionSearchSheetState extends State<RegionSearchSheet> {
  final TextEditingController _searchInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6, left: 20, right: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height - 75,
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
            '주소지 찾기',
            style: system03.copyWith(
              color: AppColors.droniGray800,
            ),
          ),
          InputField(controller: _searchInput),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.location_searching_rounded,
                size: 13.5,
                color: Colors.black,
              ),
              Gap(5),
              Text('현재 위치로 찾기', style: system09),
            ],
          ),
          Gap(30),
          if (_searchInput.text.isEmpty)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '이렇게 검색해보세요',
                    style: system07.copyWith(color: AppColors.droniGray800),
                  ),
                  Gap(16),
                  Text(
                    '도로명 + 건물 번호',
                    style: system09.copyWith(
                      color: AppColors.droniGray800,
                    ),
                  ),
                  Gap(8),
                  Text(
                    '서초로 38번길 12',
                    style: system09.copyWith(
                      color: AppColors.droniGray600,
                    ),
                  ),
                  Gap(16),
                  Text(
                    '지역명 (동 / 리) + 번지',
                    style: system09.copyWith(
                      color: AppColors.droniGray800,
                    ),
                  ),
                  Gap(8),
                  Text(
                    '서초로 1498-5',
                    style: system09.copyWith(
                      color: AppColors.droniGray600,
                    ),
                  ),
                  Gap(16),
                  Text(
                    '지역명 (동 / 리) + 건물명',
                    style: system09.copyWith(
                      color: AppColors.droniGray800,
                    ),
                  ),
                  Gap(8),
                  Text(
                    '서초동 OO 빌딩',
                    style: system09.copyWith(
                      color: AppColors.droniGray600,
                    ),
                  ),
                ],
              ),
            ),
          if (_searchInput.text.isNotEmpty)
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '07718',
                          style:
                              system05.copyWith(color: AppColors.droniBlue600),
                        ),
                        Gap(8),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '도로명',
                                  style: system10.copyWith(
                                    color: AppColors.droniGray600,
                                  ),
                                ),
                                Gap(4),
                                Text(
                                  '지번',
                                  style: system10.copyWith(
                                    color: AppColors.droniGray600,
                                  ),
                                ),
                              ],
                            ),
                            Gap(10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '서울 강서구 가로공원로 173',
                                  style: system10.copyWith(
                                    color: AppColors.droniGray800,
                                  ),
                                ),
                                Gap(4),
                                Text(
                                  '서울 강서구 가로공원로 173',
                                  style: system10.copyWith(
                                    color: AppColors.droniGray800,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: 10,
              ),
            )
        ],
      ),
    );
  }
}
