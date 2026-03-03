import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

import 'data.dart';
import 'news.dart';
import 'occasion.dart';

class TribeDetails extends TribesDetailsEntity {
  Data? data;
  List<News>? news;
  List<Occasion>? occasions;

  static const String _baseUrl = 'https://yourdomain.com';
  static const String _fallbackImage = 'https://picsum.photos/200/140';

  static String _resolveImageUrl(dynamic imagePath) {
    if (imagePath == null) return _fallbackImage;

    final path = imagePath.toString().trim();
    if (path.isEmpty) return _fallbackImage;

    if (path.startsWith('http://') || path.startsWith('https://')) return path;

    if (path.startsWith('/')) return '$_baseUrl$path';

    return _fallbackImage;
  }

  TribeDetails({this.data, this.news, this.occasions})
    : super(
        id: data?.id ?? 0,
        tribeCoverImage: _resolveImageUrl(data?.coverImage),
        tribeLogoImage: _resolveImageUrl(data?.logoImage),
        tribeName: data?.treeName ?? '',
        templateEntity: data?.template,
        tribeNewsEntity: news ?? [],
        tribeOccasionEntity: occasions ?? [],
      );

  factory TribeDetails.fromJson(Map<String, dynamic> json) => TribeDetails(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    news: (json['news'] as List<dynamic>?)
        ?.map((e) => News.fromJson(e as Map<String, dynamic>))
        .toList(),
    occasions: (json['occasions'] as List<dynamic>?)
        ?.map((e) => Occasion.fromJson(e as Map<String, dynamic>))
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'data': data?.toJson(),
    'news': news?.map((e) => e.toJson()).toList(),
    'occasions': occasions?.map((e) => e.toJson()).toList(),
  };
}
