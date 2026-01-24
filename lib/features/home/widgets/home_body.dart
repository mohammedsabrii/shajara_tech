// ==================== Home Body ====================
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/home/widgets/first_section.dart';
import 'package:shajara_tech/features/home/widgets/section_withI_tems.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 16),
          FirstSection(),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SectionWithItems(title: 'المناسبات القادمة القبائل'),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SectionWithItems(title: 'مقالات وأخبار القبائل'),
          ),
        ],
      ),
    );
  }
}
