import 'package:droni/features/find_expert/view/widgets/custom_chip.dart';
import 'package:droni/features/find_expert/view/widgets/expert_card.dart';
import 'package:droni/features/find_expert/view/widgets/region_search_sheet.dart';
import 'package:droni/features/find_expert/view/widgets/region_sheet.dart';
import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:droni/shared/widgets/input_field.dart';
import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FindExpert extends StatefulWidget {
  const FindExpert({super.key});

  @override
  State<FindExpert> createState() => _FindExpertState();
}

class _FindExpertState extends State<FindExpert> {
  final List<String> _dropdownLabel = ['인기순', '별점 순', '리뷰많은 순'];
  final int _itemCount = 100;
  final TextEditingController _searchController = TextEditingController();

  int _dropdownValue = 0;

  List<DropdownMenuItem<int>> _generateItems() {
    return List.generate(
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
    ).toList();
  }

  void _onChangeDropdown(int? value) {
    setState(() {
      _dropdownValue = value ?? 0;
    });
  }

  void _onRegionSearchTap() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (context) => RegionSearchSheet(),
    );
  }

  void _onRegionTap() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (context) => RegionSheet(),
    );
  }

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
          InputField(
            prefix: const Icon(
              Icons.search,
              color: AppColors.droniGray400,
            ),
            controller: _searchController,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                GestureDetector(
                  onTap: _onRegionSearchTap,
                  child: CustomChip(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: AppColors.droniGray500,
                        ),
                        Text(
                          "찜한 조종사",
                          style: system08.copyWith(
                            color: AppColors.droniGray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(8),
                GestureDetector(
                  onTap: _onRegionTap,
                  child: CustomChip(
                    child: Text(
                      '주소',
                      style: system08.copyWith(color: AppColors.droniGray500),
                    ),
                  ),
                ),
                const Spacer(),
                DropdownButton<int>(
                  value: _dropdownValue,
                  items: _generateItems(),
                  onChanged: (e) => _onChangeDropdown(e),
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
              itemBuilder: (context, index) => const ExpertCard(),
              itemCount: _itemCount,
            ),
          ),
        ],
      ),
    );
  }
}
