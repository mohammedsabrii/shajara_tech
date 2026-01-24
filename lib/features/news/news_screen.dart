import 'package:flutter/material.dart';

import 'package:shajara_tech/features/news/widgets/news_body.dart';

// ==================== Screen ====================
class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News'), centerTitle: true),
      body: const NewsBody(),
    );
  }
}
