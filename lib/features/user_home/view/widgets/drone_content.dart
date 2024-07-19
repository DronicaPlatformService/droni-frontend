import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:droni/shared/utils/api_client.dart';
import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:droni/shared/constants/text_style.dart';

import './content_card.dart';
import '../../view/detail_screen.dart';

class DroneContent extends StatelessWidget {
  const DroneContent({super.key});

  void _onDetailTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DetailScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('드론관련 콘텐츠', style: system03),
                GestureDetector(
                  onTap: () => _onDetailTap(context),
                  child: const SvgIcon(
                    icon: 'assets/image/icon/chevron_right.svg',
                  ),
                )
              ],
            ),
          ),
          const Gap(12),
          SizedBox(
            height: 186,
            child: FutureBuilder(
              future: mockClient.articleDroneContentSummaryGet(),
              // future: client.articleDroneContentSummaryGet(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.none ||
                    snapshot.connectionState == ConnectionState.active ||
                    snapshot.connectionState == ConnectionState.none ||
                    snapshot.data == null ||
                    !snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final data = snapshot.data!.body ?? [];

                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ContentCard(
                    width: 132,
                    article: data[index],
                  ),
                  separatorBuilder: (context, index) => const Gap(8),
                  itemCount: 3,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
