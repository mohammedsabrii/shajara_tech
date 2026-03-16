import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:shajara_tech/core/utils/app_text_styles.dart';
import 'package:shajara_tech/features/tribe_details/presentation/screen/widget/section_item.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribe_news_entity.dart';

class NewsSectionWithItems extends StatelessWidget {
  final String title;
  final List<TribeNewsEntity>? newsEntity;

  const NewsSectionWithItems({super.key, required this.title, this.newsEntity});

  @override
  Widget build(BuildContext context) {
    if (newsEntity == null || newsEntity!.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.styleAlmaraiBold16(context)),
        SizedBox(height: 16.h),
        SizedBox(
          height: 190.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 14.w),
            itemCount: newsEntity?.length ?? 0,
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            itemBuilder: (context, index) => SizedBox(
              width: 160.w,
              child: SectionItem(
                title: newsEntity?[index].tribeNewsShortDescription ?? '',
                date: newsEntity?[index].tribeNewsDate != null
                    ? DateFormat(
                        'EEEE dd MMMM , yyyy',
                        'ar',
                      ).format(DateTime.parse(newsEntity![index].tribeNewsDate))
                    : '',
                imageUrl:
                    newsEntity?[index].tribeNewsImageUrl ??
                    'https://picsum.photos/200/140',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
