// import 'package:shajara_tech/core/service/api_service.dart';
// import 'package:shajara_tech/features/NewsDetails/data/model/news_details/news_details.dart';

// abstract class NewsDetailsRemoteDataSource {
//   Future<NewsDetailsModel> getNewsDetails(int id);
// }

// class NewsDetailsRemoteDataSourceImpl implements NewsDetailsRemoteDataSource {
//   final ApiService apiService;

//   NewsDetailsRemoteDataSourceImpl({required this.apiService});

//   @override
//   Future<NewsDetailsModel> getNewsDetails(int id) async {
//     final response = await apiService.get(endPoint: 'tribes/news/$id');
//     return NewsDetailsModel.fromJson(response);
//   }
// }
