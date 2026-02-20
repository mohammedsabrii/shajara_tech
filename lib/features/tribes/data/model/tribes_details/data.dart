import 'template.dart';
import 'user.dart';

class Data {
  int? id;
  int? userId;
  int? templateId;
  String? treeName;
  dynamic coverImage;
  dynamic logoImage;
  int? isDefault;
  DateTime? createdAt;
  DateTime? updatedAt;
  Template? template;
  User? user;

  Data({
    this.id,
    this.userId,
    this.templateId,
    this.treeName,
    this.coverImage,
    this.logoImage,
    this.isDefault,
    this.createdAt,
    this.updatedAt,
    this.template,
    this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json['id'] as int?,
    userId: json['user_id'] as int?,
    templateId: json['template_id'] as int?,
    treeName: json['tree_name'] as String?,
    coverImage: json['cover_image'] as dynamic,
    logoImage: json['logo_image'] as dynamic,
    isDefault: json['is_default'] as int?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    template: json['template'] == null
        ? null
        : Template.fromJson(json['template'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'user_id': userId,
    'template_id': templateId,
    'tree_name': treeName,
    'cover_image': coverImage,
    'logo_image': logoImage,
    'is_default': isDefault,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'template': template?.toJson(),
    'user': user?.toJson(),
  };
}
