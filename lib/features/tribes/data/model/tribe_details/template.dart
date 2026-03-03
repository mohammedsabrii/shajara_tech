import 'package:shajara_tech/features/tribes/domain/entitys/template_entity.dart';

class Template extends TemplateEntity {
  int? id;
  String? name;
  String? description;
  String? image;
  int? isDefault;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? imageUrl;

  Template({
    this.id,
    this.name,
    this.description,
    this.image,
    this.isDefault,
    this.createdAt,
    this.updatedAt,
    this.imageUrl,
  }) : super(
         templateId: id,
         templateDescription: description ?? '',
         templateImageUrl: imageUrl ?? 'https://picsum.photos/200/140',
         templateName: name ?? '',
       );

  factory Template.fromJson(Map<String, dynamic> json) => Template(
    id: json['id'] as int?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    image: json['image'] as String?,
    isDefault: json['is_default'] as int?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    imageUrl: json['image_url'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'image': image,
    'is_default': isDefault,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'image_url': imageUrl,
  };
}
