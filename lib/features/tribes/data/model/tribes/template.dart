class Template {
  int? id;
  String? name;
  dynamic imageUrl;

  Template({this.id, this.name, this.imageUrl});

  factory Template.fromJson(Map<String, dynamic> json) => Template(
    id: json['id'] as int?,
    name: json['name'] as String?,
    imageUrl: json['image_url'] as dynamic,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'image_url': imageUrl,
  };
}
