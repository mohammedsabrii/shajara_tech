class User {
  int? id;
  String? name;
  String? profilePicture;
  String? profilePictureUrl;

  User({this.id, this.name, this.profilePicture, this.profilePictureUrl});

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'] as int?,
    name: json['name'] as String?,
    profilePicture: json['profile_picture'] as String?,
    profilePictureUrl: json['profile_picture_url'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'profile_picture': profilePicture,
    'profile_picture_url': profilePictureUrl,
  };
}
