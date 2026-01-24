// ==================== Section Item (Card) ====================
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shajara_tech/core/utils/app_icons.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.end, // الكلام يبتدي من نفس حافة الصورة
        children: [
          // الصورة
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://picsum.photos/200/140',
              height: 132,
              width: 156,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 140,
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(Icons.image, size: 40, color: Colors.grey),
                ),
              ),
            ),
          ),

          const SizedBox(height: 3),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'الجمعة 17 مايو , 2025 ',
                style: AppTextStyles.styleAlmaraiRegular10(context),
              ),
              const SizedBox(width: 5),
              SvgPicture.asset(AppIcons.kLetsIconsDate),
            ],
          ),
          const SizedBox(height: 1),
          // العنوان
          Text(
            'اللقاء العائلي لبني خالد العنصر',
            textAlign: TextAlign.right,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.styleAlmaraiRegular10(context),
          ),
          const SizedBox(height: 6),
        ],
      ),
    );
  }
}
