import 'package:shajara_tech/features/home/domain/entity/occasion_entity.dart';

import 'family_tree.dart';

class OccasionData extends OccasionEntity {
  int? id;
  int? userId;
  String? name;
  String? occasionDate;
  String? visibility;
  String? details;
  String? coverImage;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? familyTreeId;
  String? category;
  String? latitude;
  String? longitude;
  String? city;
  FamilyTree? familyTree;
  String? coverImageUrl;

  OccasionData({
    this.id,
    this.userId,
    this.name,
    this.occasionDate,
    this.visibility,
    this.details,
    this.coverImage,
    this.createdAt,
    this.updatedAt,
    this.familyTreeId,
    this.category,
    this.latitude,
    this.longitude,
    this.city,
    this.familyTree,
    this.coverImageUrl,
  }) : super(
         occasionTime: occasionDate ?? '',
         occasionTitle: name ?? '',
         imageUrl: coverImageUrl ?? 'https://picsum.photos/200/140',
         occasionId: id ?? 0,
       );

  factory OccasionData.fromJson(Map<String, dynamic> json) => OccasionData(
    id: json['id'] as int?,
    userId: json['user_id'] as int?,
    name: json['name'] as String?,
    occasionDate: json['occasion_date'] as String?,
    visibility: json['visibility'] as String?,
    details: json['details'] as String?,
    coverImage: json['cover_image'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    familyTreeId: json['family_tree_id'] as int?,
    category: json['category'] as String?,
    latitude: json['latitude'] as String?,
    longitude: json['longitude'] as String?,
    coverImageUrl: json['cover_image_url'] as String?,

    city: json['city'] as String?,
    familyTree: json['family_tree'] == null
        ? null
        : FamilyTree.fromJson(json['family_tree'] as Map<String, dynamic>),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'user_id': userId,
    'name': name,
    'occasion_date': occasionTime,
    'visibility': visibility,
    'details': details,
    'cover_image': coverImage,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'family_tree_id': familyTreeId,
    'category': category,
    'latitude': latitude,
    'longitude': longitude,
    'city': city,
    'family_tree': familyTree?.toJson(),
  };
}
