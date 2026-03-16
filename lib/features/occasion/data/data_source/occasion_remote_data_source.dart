// import 'package:shajara_tech/core/service/api_service.dart';
// import 'package:shajara_tech/features/occasion/data/model/occasions_model/occasion_data.dart';

// abstract class OccasionRemoteDataSource {
//   Future<List<OccasionData>> getOccasion({required int perPage});
// }

// class OccasionRemoteDataSourceImpl implements OccasionRemoteDataSource {
//   final ApiService apiService;
//   OccasionRemoteDataSourceImpl({required this.apiService});

//   @override
//   Future<List<OccasionData>> getOccasion({required int perPage}) async {
//     final response = await apiService.get(
//       endPoint: 'tribes/occasions?per_page=$perPage',
//     );
//     final data = response['data'] as List;
//     return data.map((occasion) => OccasionData.fromJson(occasion)).toList();
//   }
// }
