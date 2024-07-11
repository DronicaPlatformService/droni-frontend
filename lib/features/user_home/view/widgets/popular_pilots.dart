import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/utils/api_client.dart';
import 'package:droni/shared/widgets/svg_icon.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PopularPilots extends StatelessWidget {
  const PopularPilots({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '인기있는 조종사들',
                  style: system03.copyWith(
                    color: AppColors.droniGray800,
                  ),
                ),
                const SvgIcon(
                  icon: 'assets/image/icon/chevron_right.svg',
                  width: 26,
                  color: AppColors.droniGray400,
                )
              ],
            ),
          ),
          const Gap(12),
          SizedBox(
            height: 88,
            child: FutureBuilder(
              future: mockClient.homePopularPilotGet(),
              // future: client.homePopularPilotGet(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.none ||
                    snapshot.connectionState == ConnectionState.active ||
                    snapshot.connectionState == ConnectionState.none ||
                    snapshot.data == null ||
                    !snapshot.hasData) {
                  return const CircularProgressIndicator();
                }

                final pilots = snapshot.data!.body ?? [];

                return ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemCount: pilots.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Column(
                    children: [
                      if (pilots[index].imageUrl != null)
                        SizedBox(
                          width: 64,
                          height: 64,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              pilots[index].imageUrl!,
                            ),
                          ),
                        ),
                      const Gap(6),
                      Text(
                        pilots[index].nickName ?? '조종사 이름 없음',
                        style: system11.copyWith(color: AppColors.droniGray600),
                      ),
                    ],
                  ),
                  separatorBuilder: (context, index) => const Gap(12),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
