import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';

import 'template.dart';
import 'user.dart';

class TribesData extends TribesEntity {
  int? id;
  String? treeName;
  dynamic coverImage;
  dynamic logoImage;
  dynamic coverImageUrl;
  dynamic logoImageUrl;
  int? templateId;
  int? userId;
  DateTime? createdAt;
  Template? template;
  User? user;

  TribesData({
    this.id,
    this.treeName,
    this.coverImage,
    this.logoImage,
    this.coverImageUrl,
    this.logoImageUrl,
    this.templateId,
    this.userId,
    this.createdAt,
    this.template,
    this.user,
  }) : super(
         tribeName: treeName ?? '',
         tribeCoverImage: coverImageUrl ?? 'https://picsum.photos/200/140',
         tribeId: id,
       );

  factory TribesData.fromJson(Map<String, dynamic> json) => TribesData(
    id: json['id'] as int?,
    treeName: json['tree_name'] as String?,
    coverImage: json['cover_image'] as dynamic,
    logoImage: json['logo_image'] as dynamic,
    coverImageUrl: json['cover_image_url'] as dynamic,
    logoImageUrl: json['logo_image_url'] as dynamic,
    templateId: json['template_id'] as int?,
    userId: json['user_id'] as int?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    template: json['template'] == null
        ? null
        : Template.fromJson(json['template'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'tree_name': treeName,
    'cover_image': coverImage,
    'logo_image': logoImage,
    'template_id': templateId,
    'user_id': userId,
    'created_at': createdAt?.toIso8601String(),
    'template': template?.toJson(),
    'user': user?.toJson(),
  };
}
