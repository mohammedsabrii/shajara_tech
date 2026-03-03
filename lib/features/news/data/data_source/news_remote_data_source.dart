import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/news/data/model/news_model/data.dart';

abstract class NewsRemoteDataSource {
  Future<List<NewsData>> getNews();
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final ApiService apiService;

  NewsRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<NewsData>> getNews() async {
    final response = await apiService.get(endPoint: 'tribes/news?per_page=15');
    final data = response['data'] as List;
    return data.map((news) => NewsData.fromJson(news)).toList();
  }
}
