import 'package:shajara_tech/features/tribes/domain/entitys/tribe_occasion_entity.dart';

class Occasion extends TribeOccasionEntity {
  int? id;
  int? userId;
  String? name;
  String? occasionDate;
  String? visibility;
  String? adminApprovalStatus;
  String? details;
  dynamic coverImage;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? familyTreeId;
  String? category;
  String? latitude;
  String? longitude;
  String? city;
  dynamic coverImageUrl;

  Occasion({
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
    this.latitude,
    this.longitude,
    this.city,
    this.coverImageUrl,
  }) : super(
         tribeOccasionId: id ?? 0,
         tribeOccasionTitle: name ?? '',
         tribeOccasionDate: occasionDate ?? '',
         tribeOccasionDetails: details ?? '',
         tribeOccasionCoverImage:
             coverImageUrl ?? 'https://picsum.photos/200/140',
         tribeOccasionCategory: category ?? '',
         tribeOccasionCity: city ?? '',
         tribeOccasionVisibility: visibility ?? '',
       );

  factory Occasion.fromJson(Map<String, dynamic> json) => Occasion(
    id: json['id'] as int?,
    userId: json['user_id'] as int?,
    name: json['name'] as String?,
    occasionDate: json['occasion_date'] as String?,
    visibility: json['visibility'] as String?,
    adminApprovalStatus: json['admin_approval_status'] as String?,
    details: json['details'] as String?,
    coverImage: json['cover_image'] as dynamic,
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
    city: json['city'] as String?,
    coverImageUrl: json['cover_image_url'] as dynamic,
  );

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
    'latitude': latitude,
    'longitude': longitude,
    'city': city,
    'cover_image_url': coverImageUrl,
  };
}
