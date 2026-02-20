import 'package:shajara_tech/features/tribes/domain/entitys/template_entity.dart';

class TribesDetailsEntity {
  final String tribeName;
  final int id;
  final String tribeCoverImage;
  final String tribeLogoImage;
  final TemplateEntity? templateEntity;

  TribesDetailsEntity({
    required this.tribeName,
    required this.id,
    required this.tribeCoverImage,
    required this.tribeLogoImage,
    this.templateEntity,
  });
}
