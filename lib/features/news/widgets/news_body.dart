// ==================== Body ====================
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/news/widgets/news_grid_screens.dart';
import 'package:shajara_tech/features/news/widgets/news_text_field.dart';

class NewsBody extends StatelessWidget {
  const NewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 16),

          NewsTextField(),

          SizedBox(height: 24),

          NewsGridSection(),
        ],
      ),
    );
  }
}
