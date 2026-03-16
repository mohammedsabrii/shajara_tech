// import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';

// import 'family_tree.dart';

// class NewsData extends NewsEntity {
//   int? id;
//   int? userId;
//   String? title;
//   String? shortDescription;
//   String? fullDescription;
//   String? image;
//   DateTime? publishedAt;
//   String? visibility;
//   String? adminApprovalStatus;
//   DateTime? createdAt;
//   DateTime? updatedAt;
//   int? familyTreeId;
//   String? imageUrl;
//   String? coverImageUrl;
//   FamilyTree? familyTree;

//   NewsData({
//     this.id,
//     this.userId,
//     this.title,
//     this.shortDescription,
//     this.fullDescription,
//     this.image,
//     this.publishedAt,
//     this.visibility,
//     this.adminApprovalStatus,
//     this.createdAt,
//     this.updatedAt,
//     this.familyTreeId,
//     this.imageUrl,
//     this.coverImageUrl,
//     this.familyTree,
//   }) : super(
//          newsId: id ?? 0,
//          newsDate: createdAt ?? DateTime.now(),
//          newsTitle: shortDescription ?? '',
//          newsImage: imageUrl ?? 'https://picsum.photos/200/140',
//        );

//   factory NewsData.fromJson(Map<String, dynamic> json) => NewsData(
//     id: json['id'] as int?,
//     userId: json['user_id'] as int?,
//     title: json['title'] as String?,
//     shortDescription: json['short_description'] as String?,
//     fullDescription: json['full_description'] as String?,
//     image: json['image'] as String?,
//     publishedAt: json['published_at'] == null
//         ? null
//         : DateTime.parse(json['published_at'] as String),
//     visibility: json['visibility'] as String?,
//     adminApprovalStatus: json['admin_approval_status'] as String?,
//     createdAt: json['created_at'] == null
//         ? null
//         : DateTime.parse(json['created_at'] as String),
//     updatedAt: json['updated_at'] == null
//         ? null
//         : DateTime.parse(json['updated_at'] as String),
//     familyTreeId: json['family_tree_id'] as int?,
//     imageUrl: json['image_url'] as String?,
//     coverImageUrl: json['cover_image_url'] as String?,
//     familyTree: json['family_tree'] == null
//         ? null
//         : FamilyTree.fromJson(json['family_tree'] as Map<String, dynamic>),
//   );

//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'user_id': userId,
//     'title': title,
//     'short_description': shortDescription,
//     'full_description': fullDescription,
//     'image': image,
//     'published_at': publishedAt?.toIso8601String(),
//     'visibility': visibility,
//     'admin_approval_status': adminApprovalStatus,
//     'created_at': createdAt?.toIso8601String(),
//     'updated_at': updatedAt?.toIso8601String(),
//     'family_tree_id': familyTreeId,
//     'image_url': imageUrl,
//     'cover_image_url': coverImageUrl,
//     'family_tree': familyTree?.toJson(),
//   };
// }
