import 'package:shajara_tech/features/tribes/domain/entitys/tribe_news_entity.dart';

class News extends TribeNewsEntity {
  int? id;
  int? userId;
  String? title;
  String? shortDescription;
  String? fullDescription;
  dynamic image;
  DateTime? publishedAt;
  String? visibility;
  String? adminApprovalStatus;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? familyTreeId;
  dynamic imageUrl;
  dynamic coverImageUrl;

  News({
    this.id,
    this.userId,
    this.title,
    this.shortDescription,
    this.fullDescription,
    this.image,
    this.publishedAt,
    this.visibility,
    this.adminApprovalStatus,
    this.createdAt,
    this.updatedAt,
    this.familyTreeId,
    this.imageUrl,
    this.coverImageUrl,
  }) : super(
         tribeNewsId: id ?? 0,
         tribeNewsDate: createdAt?.toIso8601String() ?? '',
         tribeNewsImageUrl: imageUrl ?? 'https://picsum.photos/200/140',
         tribeNewsTitle: title ?? '',
         tribeNewsShortDescription: shortDescription ?? '',
         tribeNewsLongDescription: fullDescription ?? '',
       );

  factory News.fromJson(Map<String, dynamic> json) => News(
    id: json['id'] as int?,
    userId: json['user_id'] as int?,
    title: json['title'] as String?,
    shortDescription: json['short_description'] as String?,
    fullDescription: json['full_description'] as String?,
    image: json['image'] as dynamic,
    publishedAt: json['published_at'] == null
        ? null
        : DateTime.parse(json['published_at'] as String),
    visibility: json['visibility'] as String?,
    adminApprovalStatus: json['admin_approval_status'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    familyTreeId: json['family_tree_id'] as int?,
    imageUrl: json['image_url'] as dynamic,
    coverImageUrl: json['cover_image_url'] as dynamic,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'user_id': userId,
    'title': title,
    'short_description': shortDescription,
    'full_description': fullDescription,
    'image': image,
    'published_at': publishedAt?.toIso8601String(),
    'visibility': visibility,
    'admin_approval_status': adminApprovalStatus,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'family_tree_id': familyTreeId,
    'image_url': imageUrl,
    'cover_image_url': coverImageUrl,
  };
}
