import 'package:flutter/material.dart';
import 'package:shajara_tech/features/home/widgets/custom_appbar.dart';
import 'package:shajara_tech/features/home/widgets/home_body.dart';

class HomeeScreen extends StatelessWidget {
  const HomeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAAppBar(
        titleText: 'الرئيسية',
        rightIconUrl: 'https://picsum.photos/24',
      ),
      body: HomeBody(),
    );
  }
}
