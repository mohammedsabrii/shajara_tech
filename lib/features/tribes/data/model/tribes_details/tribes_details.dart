import 'package:shajara_tech/features/tribes/domain/entitys/tribes_details_entity.dart';

import 'data.dart';

class TribesDetails extends TribesDetailsEntity {
  Data? data;
  List<dynamic>? news;
  List<dynamic>? occasions;

  TribesDetails({this.data, this.news, this.occasions})
    : super(
        id: data?.id ?? 0,
        tribeCoverImage: data?.coverImage?.toString() ?? '',
        tribeLogoImage: data?.logoImage?.toString() ?? '',
        tribeName: data?.treeName ?? '',
        templateEntity: data?.template,
      );

  factory TribesDetails.fromJson(Map<String, dynamic> json) => TribesDetails(
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
    news: json['news'] as List<dynamic>?,
    occasions: json['occasions'] as List<dynamic>?,
  );

  Map<String, dynamic> toJson() => {
    'data': data?.toJson(),
    'news': news,
    'occasions': occasions,
  };
}
