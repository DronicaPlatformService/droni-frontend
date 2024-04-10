import 'package:flutter/material.dart';

import 'package:droni/common/common.dart';

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
          Container(
            decoration: const BoxDecoration(color: Colors.grey),
            height: 140,
            child: const Center(child: Text('Banner')),
          )
        ],
      ),
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
