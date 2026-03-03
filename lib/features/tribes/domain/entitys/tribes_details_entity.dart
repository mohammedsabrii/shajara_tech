import 'package:shajara_tech/features/tribes/domain/entitys/template_entity.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribe_news_entity.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribe_occasion_entity.dart';

class TribesDetailsEntity {
  final String tribeName;
  final int id;
  final String tribeCoverImage;
  final String tribeLogoImage;
  final TemplateEntity? templateEntity;
  final List<TribeNewsEntity>? tribeNewsEntity;
  final List<TribeOccasionEntity>? tribeOccasionEntity;

  TribesDetailsEntity({
    required this.tribeName,
    required this.id,
    required this.tribeCoverImage,
    required this.tribeLogoImage,
    this.templateEntity,
    this.tribeNewsEntity,
    this.tribeOccasionEntity,
  });
}
