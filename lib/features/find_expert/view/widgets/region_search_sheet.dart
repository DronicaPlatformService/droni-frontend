import 'package:droni/features/find_expert/view/widgets/region_search_example_text.dart';
import 'package:droni/features/find_expert/view/widgets/region_search_item.dart';
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
          const Gap(30),
          if (_searchInput.text.isEmpty)
            Expanded(
              child: _searchInput.text.isEmpty
                  ? const RegionSearchExampleText()
                  : ListView.separated(
                      itemBuilder: (context, index) => RegionSearchItem(),
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: 10,
                    ),
            ),
        ],
      ),
    );
  }
}
