import 'package:droni/features/user_home/view/widgets/drone_content.dart';
import 'package:droni/features/user_home/view/widgets/popular_pilots.dart';
import 'package:droni/features/user_home/view/widgets/use_case_guide.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.grey),
            height: size.height * 0.17,
            child: const Center(child: Text('Banner')),
          ),
          const PopularPilots(),
          const UseCaseGuide(),
          const DroneContent()
        ],
      ),
    );
  }
}
