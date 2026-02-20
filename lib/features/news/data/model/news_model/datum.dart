import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';

import 'family_tree.dart';

class NewsData extends NewsEntity {
  int? id;
  int? userId;
  String? title;
  String? shortDescription;
  String? fullDescription;
  String? image;
  DateTime? publishedAt;
  String? visibility;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? familyTreeId;
  FamilyTree? familyTree;

  NewsData({
    this.id,
    this.userId,
    this.title,
    this.shortDescription,
    this.fullDescription,
    this.image,
    this.publishedAt,
    this.visibility,
    this.createdAt,
    this.updatedAt,
    this.familyTreeId,
    this.familyTree,
  }) : super(
         newsDate: createdAt ?? DateTime.now(),
         newsTitle: shortDescription ?? '',
       );

  factory NewsData.fromJson(Map<String, dynamic> json) => NewsData(
    id: json['id'] as int?,
    userId: json['user_id'] as int?,
    title: json['title'] as String?,
    shortDescription: json['short_description'] as String?,
    fullDescription: json['full_description'] as String?,
    image: json['image'] as String?,
    publishedAt: json['published_at'] == null
        ? null
        : DateTime.parse(json['published_at'] as String),
    visibility: json['visibility'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    familyTreeId: json['family_tree_id'] as int?,
    familyTree: json['family_tree'] == null
        ? null
        : FamilyTree.fromJson(json['family_tree'] as Map<String, dynamic>),
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
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'family_tree_id': familyTreeId,
    'family_tree': familyTree?.toJson(),
  };
}
