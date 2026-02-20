class User {
  int? id;
  String? name;
  dynamic profilePicture;

  User({this.id, this.name, this.profilePicture});

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'] as int?,
    name: json['name'] as String?,
    profilePicture: json['profile_picture'] as dynamic,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'profile_picture': profilePicture,
  };
}
