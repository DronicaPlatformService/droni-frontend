import 'package:droni/features/customer_home/view/widgets/drone_content.dart';
import 'package:droni/features/customer_home/view/widgets/home_app_bar.dart';
import 'package:droni/features/customer_home/view/widgets/popular_pilots.dart';
import 'package:droni/features/customer_home/view/widgets/use_case_guide.dart';
import 'package:flutter/material.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  late Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return CustomScrollView(
      slivers: [
        const HomeAppBar(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, index) => Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                banner(),
                const PopularPilots(),
                const UseCaseGuide(),
                const DroneContent()
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container banner() {
    return Container(
      decoration: const BoxDecoration(color: Colors.grey),
      height: _size.height * 0.17,
      child: const Center(child: Text('Banner')),
    );
  }
}
