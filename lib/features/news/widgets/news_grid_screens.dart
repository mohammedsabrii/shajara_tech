import 'package:flutter/material.dart';
import 'package:shajara_tech/features/news/widgets/news_section_item.dart';

class NewsGridSection extends StatelessWidget {
  const NewsGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 8,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,

          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return const NewsSectionItem();
        },
      ),
    );
  }
}
