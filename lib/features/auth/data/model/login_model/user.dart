class User {
  int? id;
  String? name;
  String? email;
  dynamic profilePicture;
  String? role;
  int? pageRoleId;
  bool? isSuperAdmin;
  dynamic phone;
  dynamic job;
  String? status;
  String? membershipType;
  dynamic birthDate;
  dynamic socialStatus;
  String? lifeStatus;
  dynamic emailVerifiedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic customDomain;

  User({
    this.id,
    this.name,
    this.email,
    this.profilePicture,
    this.role,
    this.pageRoleId,
    this.isSuperAdmin,
    this.phone,
    this.job,
    this.status,
    this.membershipType,
    this.birthDate,
    this.socialStatus,
    this.lifeStatus,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.customDomain,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'] as int?,
    name: json['name'] as String?,
    email: json['email'] as String?,
    profilePicture: json['profile_picture'] as dynamic,
    role: json['role'] as String?,
    pageRoleId: json['page_role_id'] as int?,
    isSuperAdmin: json['is_super_admin'] as bool?,
    phone: json['phone'] as dynamic,
    job: json['job'] as dynamic,
    status: json['status'] as String?,
    membershipType: json['membership_type'] as String?,
    birthDate: json['birth_date'] as dynamic,
    socialStatus: json['social_status'] as dynamic,
    lifeStatus: json['life_status'] as String?,
    emailVerifiedAt: json['email_verified_at'] as dynamic,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    customDomain: json['custom_domain'] as dynamic,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'profile_picture': profilePicture,
    'role': role,
    'page_role_id': pageRoleId,
    'is_super_admin': isSuperAdmin,
    'phone': phone,
    'job': job,
    'status': status,
    'membership_type': membershipType,
    'birth_date': birthDate,
    'social_status': socialStatus,
    'life_status': lifeStatus,
    'email_verified_at': emailVerifiedAt,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'custom_domain': customDomain,
  };
}
