// ==================== Grid Section ====================
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/home/widgets/section_Item.dart';

class NewsGridSection extends StatelessWidget {
  const NewsGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 8, // عدد العناصر
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عنصرين جنب بعض
          crossAxisSpacing: 12,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return const SectionItem(); // هنا استخدمنا SectionItem بدل NewsItem
        },
      ),
    );
  }
}
