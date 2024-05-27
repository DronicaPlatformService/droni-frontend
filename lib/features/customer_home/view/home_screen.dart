import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:droni/api/generated/open_api.swagger.dart';
import 'package:droni/features/customer_home/view/widgets/drone_content.dart';
import 'package:droni/features/customer_home/view/widgets/popular_pilots.dart';
import 'package:droni/features/customer_home/view/widgets/use_case_guide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
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
