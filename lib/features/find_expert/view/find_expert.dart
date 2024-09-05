import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';

class FindExpert extends StatefulWidget {
  const FindExpert({super.key});

  @override
  State<FindExpert> createState() => _FindExpertState();
}

class _FindExpertState extends State<FindExpert> {
  int _dropdownValue = 0;
  final List<String> _dropdownLabel = ['인기순', '별점 순', '리뷰많은 순'];
  final int _itemCount = 100;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '조종사 찾기',
                  style: system03.copyWith(color: AppColors.droniGray800),
                ),
                const SvgIcon(
                  icon: 'assets/image/icon/notification_unread_true.svg',
                  height: 26,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.droniGray200),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: AppColors.droniGray400,
                    ),
                    const Gap(6),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '조종사를 검색해보세요.',
                          hintStyle: system08.copyWith(
                            color: AppColors.droniGray400,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.droniGray300),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: AppColors.droniGray500,
                        ),
                        Text(
                          '찜한 조종사',
                          style:
                              system08.copyWith(color: AppColors.droniGray500),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(8),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.droniGray300),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    child: Row(
                      children: [
                        Text(
                          '주소',
                          style:
                              system08.copyWith(color: AppColors.droniGray500),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                DropdownButton<int>(
                  value: _dropdownValue,
                  items: List.generate(
                    _dropdownLabel.length,
                    (index) => DropdownMenuItem(
                      value: index,
                      child: Text(
                        _dropdownLabel[index],
                        style: system08.copyWith(
                          color: AppColors.droniGray700,
                        ),
                      ),
                    ),
                  ).toList(),
                  onChanged: (e) {
                    setState(() {
                      _dropdownValue = e!;
                    });
                  },
                  elevation: 0,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  underline: Container(),
                  alignment: Alignment.centerRight,
                  style: system08.copyWith(
                    color: AppColors.droniGray700,
                  ),
                )
              ],
            ),
          ),
          const Gap(12),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Divider(
                height: 9,
                color: AppColors.droniGray200,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 40,
                      height: 40,
                      child: CircleAvatar(),
                    ),
                    const Gap(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '김철수',
                          style: system05.copyWith(
                            color: AppColors.droniGray800,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.star, color: Colors.yellow),
                            Text(
                              '5.0',
                              style: system07.copyWith(
                                color: AppColors.droniGray800,
                              ),
                            ),
                            const Gap(3),
                            Text(
                              '(2건)',
                              style: system10.copyWith(
                                  color: AppColors.droniGray500),
                            ),
                            const Gap(8),
                            Text(
                              '방제 횟수',
                              style: system08.copyWith(
                                  color: AppColors.droniGray600),
                            ),
                            const Gap(2),
                            Text(
                              '2',
                              style: system07.copyWith(
                                  color: AppColors.droniGray600),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              itemCount: _itemCount,
            ),
          )
        ],
      ),
    );
  }
}
