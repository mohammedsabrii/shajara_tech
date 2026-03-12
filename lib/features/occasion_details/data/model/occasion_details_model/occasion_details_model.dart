import 'package:shajara_tech/features/occasion_details/domain/entity/occasion_details_entity.dart';

import 'family_tree.dart';

class OccasionDetailsModel extends OccasionDetailsEntity {
  int? id;
  int? userId;
  String? name;
  String? occasionDate;
  String? visibility;
  String? adminApprovalStatus;
  String? details;
  String? coverImage;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? familyTreeId;
  String? category;
  dynamic source;
  String? latitude;
  String? longitude;
  String? city;
  String? coverImageUrl;
  FamilyTree? familyTree;

  OccasionDetailsModel({
    this.id,
    this.userId,
    this.name,
    this.occasionDate,
    this.visibility,
    this.adminApprovalStatus,
    this.details,
    this.coverImage,
    this.createdAt,
    this.updatedAt,
    this.familyTreeId,
    this.category,
    this.source,
    this.latitude,
    this.longitude,
    this.city,
    this.coverImageUrl,
    this.familyTree,
  }) : super(
         occasionTime: occasionDate ?? '',
         occasionTitle: name ?? '',
         occasionImage: coverImageUrl ?? 'https://picsum.photos/200/140',
         occasionDescription: details ?? '',
         occasionLocation: city ?? '',
       );

  factory OccasionDetailsModel.fromJson(Map<String, dynamic> json) {
    return OccasionDetailsModel(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      name: json['name'] as String?,
      occasionDate: json['occasion_date'] as String?,
      visibility: json['visibility'] as String?,
      adminApprovalStatus: json['admin_approval_status'] as String?,
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
      source: json['source'] as dynamic,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      city: json['city'] as String?,
      coverImageUrl: json['cover_image_url'] as String?,
      familyTree: json['family_tree'] == null
          ? null
          : FamilyTree.fromJson(json['family_tree'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'user_id': userId,
    'name': name,
    'occasion_date': occasionDate,
    'visibility': visibility,
    'admin_approval_status': adminApprovalStatus,
    'details': details,
    'cover_image': coverImage,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'family_tree_id': familyTreeId,
    'category': category,
    'source': source,
    'latitude': latitude,
    'longitude': longitude,
    'city': city,
    'cover_image_url': coverImageUrl,
    'family_tree': familyTree?.toJson(),
  };
}
