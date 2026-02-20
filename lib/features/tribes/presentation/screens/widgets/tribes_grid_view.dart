import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';
import 'package:shajara_tech/features/tribes/presentation/screens/widgets/tribes_item.dart';

class TribesGridView extends StatelessWidget {
  const TribesGridView({super.key, required this.tribesEntity});
  final List<TribesEntity> tribesEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: tribesEntity.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          childAspectRatio: 0.9,
        ),
        itemBuilder: (context, index) {
          return TribeItem(tribesEntity: tribesEntity[index]);
        },
      ),
    );
  }
}
