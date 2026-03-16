// class FamilyTree {
//   int? id;
//   String? treeName;
//   dynamic coverImage;
//   dynamic logoImage;
//   dynamic coverImageUrl;
//   dynamic logoImageUrl;

//   FamilyTree({
//     this.id,
//     this.treeName,
//     this.coverImage,
//     this.logoImage,
//     this.coverImageUrl,
//     this.logoImageUrl,
//   });

//   factory FamilyTree.fromJson(Map<String, dynamic> json) => FamilyTree(
//     id: json['id'] as int?,
//     treeName: json['tree_name'] as String?,
//     coverImage: json['cover_image'] as dynamic,
//     logoImage: json['logo_image'] as dynamic,
//     coverImageUrl: json['cover_image_url'] as dynamic,
//     logoImageUrl: json['logo_image_url'] as dynamic,
//   );

//   Map<String, dynamic> toJson() => {
//     'id': id,
//     'tree_name': treeName,
//     'cover_image': coverImage,
//     'logo_image': logoImage,
//     'cover_image_url': coverImageUrl,
//     'logo_image_url': logoImageUrl,
//   };
// }
