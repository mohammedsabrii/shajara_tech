import 'package:flutter/material.dart';
import 'package:shajara_tech/features/families/presentation/screens/widgets/families_item.dart';

class FamiliesGridView extends StatelessWidget {
  const FamiliesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,

        childAspectRatio: .9,
      ),
      itemBuilder: (context, index) {
        return const FamilieItem();
      },
    );
  }
}
