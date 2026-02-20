class Tree {
  int? userId;
  int? templateId;
  String? treeName;
  bool? isDefault;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;

  Tree({
    this.userId,
    this.templateId,
    this.treeName,
    this.isDefault,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory Tree.fromJson(Map<String, dynamic> json) => Tree(
    userId: json['user_id'] as int?,
    templateId: json['template_id'] as int?,
    treeName: json['tree_name'] as String?,
    isDefault: json['is_default'] as bool?,
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    id: json['id'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'user_id': userId,
    'template_id': templateId,
    'tree_name': treeName,
    'is_default': isDefault,
    'updated_at': updatedAt?.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'id': id,
  };
}
