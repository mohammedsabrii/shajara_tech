import 'package:flutter/material.dart';
import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';
import 'package:shajara_tech/features/occasion/presentation/screen/widget/occasion_section_item.dart';

class OccasionGridSection extends StatelessWidget {
  const OccasionGridSection({super.key, required this.occasionEntity});
  final List<OccasionEntity> occasionEntity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: occasionEntity.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,

          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return OccasionSectionItem(occasionEntity: occasionEntity[index]);
        },
      ),
    );
  }
}
