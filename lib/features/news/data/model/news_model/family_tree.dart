class FamilyTree {
  int? id;
  String? treeName;
  String? coverImage;
  String? logoImage;

  FamilyTree({this.id, this.treeName, this.coverImage, this.logoImage});

  factory FamilyTree.fromJson(Map<String, dynamic> json) => FamilyTree(
    id: json['id'] as int?,
    treeName: json['tree_name'] as String?,
    coverImage: json['cover_image'] as String?,
    logoImage: json['logo_image'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'tree_name': treeName,
    'cover_image': coverImage,
    'logo_image': logoImage,
  };
}
