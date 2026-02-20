import 'package:shajara_tech/features/auth/domain/entity/sign_up_entity.dart';

class SignUpModel extends SignUpEntity {
  String? name;
  String? email;
  String? role;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;
  int? pageRoleId;

  SignUpModel({
    this.name,
    this.email,
    this.role,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.pageRoleId,
  }) : super(
         userEmail: email ?? '',
         userName: name ?? '',
         userRole: role ?? 'tree_creator',
       );
  factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
    name: json['name'] as String?,
    email: json['email'] as String?,
    role: json['role'] as String?,
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    id: json['id'] as int?,
    pageRoleId: json['page_role_id'] as int?,
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'role': role,
    'updated_at': updatedAt?.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'id': id,
    'page_role_id': pageRoleId,
  };
}
