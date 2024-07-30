import 'package:droni/shared/constants/app_colors.dart';
import 'package:droni/shared/constants/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();

  bool isEmpty = true;

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        isEmpty = _controller.text.isEmpty;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('김철수'),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(44),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 8),
              child: Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.droniGray300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '방제완료',
                  textAlign: TextAlign.center,
                  style: system07.copyWith(color: AppColors.droniGray800),
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            ListView.separated(
              itemCount: 1,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 26),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    // 상대방
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.droniGray200,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Text(
                            '2024년 3월 13일',
                            style: system12.copyWith(
                              color: AppColors.droniGray500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(24),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 40,
                            height: 40,
                            child: CircleAvatar(),
                          ),
                          const Gap(12),
                          Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Text('안녕하세요.'),
                          ),
                        ],
                      ),
                    ),
                    const Gap(8),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          const Gap(12),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text(
                                '메시지를 입력 후 전송 버튼을 눌러주시기 바래요.',
                                overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Gap(8),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 40,
                          ),
                          const Gap(12),
                          SizedBox(
                            width: 40,
                            child: Text(
                              '11:24',
                              textAlign: TextAlign.end,
                              style: system10.copyWith(
                                color: AppColors.droniGray400,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // gap
                    const Gap(20),
                    // 나
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: AppColors.droniBlue100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '네! 안녕하세요.',
                            style: system08.copyWith(
                              color: AppColors.droniGray600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '11:26',
                          style: system10.copyWith(
                            color: AppColors.droniGray400,
                          ),
                        ),
                      ],
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) => const Gap(10),
            ),
            Positioned(
              bottom: 0,
              width: MediaQuery.of(context).size.width,
              child: BottomAppBar(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.droniGray100,
                            hintText: '메시지를 입력하세요. (200자)',
                            hintStyle: system08.copyWith(
                              color: AppColors.droniGray400,
                            ),
                            contentPadding: const EdgeInsets.all(12),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const Gap(12),
                      Icon(
                        Icons.send_rounded,
                        color: _controller.text.isEmpty
                            ? AppColors.droniGray300
                            : AppColors.droniBlue500,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
