import 'package:flutter/material.dart';

import 'package:droni/common/common.dart';
import 'package:flutter/widgets.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          header(),
          banner(),
          Container(
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
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/image/icon/chevron_right.svg',
                        width: 26,
                      ),
                    ],
                  ),
                ),
                const Height(12),
                SizedBox(
                  height: 88,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    itemCount: 8,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Column(
                      children: [
                        const SizedBox(
                          width: 64,
                          height: 64,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDy9bXUES6Lh_0aZMVd1HgHfv8OKhh4WaAdby5wFHxDQ&s',
                            ),
                          ),
                        ),
                        const Height(6),
                        Text(
                          '조종사1',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                    separatorBuilder: (context, index) => const Width(12),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container banner() {
    return Container(
      decoration: const BoxDecoration(color: Colors.grey),
      height: 140,
      child: const Center(child: Text('Banner')),
    );
  }

  Padding header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/image/logo.svg',
            height: 24,
          ),
          SvgPicture.asset(
            'assets/image/icon/notification_unread_true.svg',
            height: 26,
          )
        ],
      ),
    );
  }

  // void showSnackbar(BuildContext context) {
  //   context.showSnackbar('snackbar 입니다.',
  //       extraButton: Tap(
  //         onTap: () {
  //           context.showErrorSnackbar('error');
  //         },
  //         child: '에러 보여주기 버튼'
  //             .text
  //             .white
  //             .size(13)
  //             .make()
  //             .centered()
  //             .pSymmetric(h: 10, v: 5),
  //       ));
  // }

  // Future<void> showConfirmDialog(BuildContext context) async {
  //   final confirmDialogResult = await ConfirmDialog(
  //     '오늘 기분이 좋나요?',
  //     buttonText: "네",
  //     cancelButtonText: "아니오",
  //   ).show();
  //   debugPrint(confirmDialogResult?.isSuccess.toString());

  //   confirmDialogResult?.runIfSuccess((data) {
  //     ColorBottomSheet(
  //       '❤️',
  //       context: context,
  //       backgroundColor: Colors.yellow.shade200,
  //     ).show();
  //   });

  //   confirmDialogResult?.runIfFailure((data) {
  //     ColorBottomSheet(
  //       '❤️힘내여',
  //       backgroundColor: Colors.yellow.shade300,
  //       textColor: Colors.redAccent,
  //     ).show();
  //   });
  // }

  // Future<void> showMessageDialog() async {
  //   final result = await MessageDialog("안녕하세요").show();
  //   debugPrint(result.toString());
  // }

  // void openDrawer(BuildContext context) {
  //   Scaffold.of(context).openDrawer();
  // }
}
