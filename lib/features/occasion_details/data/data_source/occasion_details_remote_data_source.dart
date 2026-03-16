// import 'package:shajara_tech/core/service/api_service.dart';
// import 'package:shajara_tech/features/occasion_details/data/model/occasion_details_model/occasion_details_model.dart';

// abstract class OccasionDetailsRemoteDataSource {
//   Future<OccasionDetailsModel> getOccasionDetails(int id);
// }

// class OccasionDetailsRemoteDataSourceImpl
//     implements OccasionDetailsRemoteDataSource {
//   final ApiService apiService;

//   OccasionDetailsRemoteDataSourceImpl({required this.apiService});

//   @override
//   Future<OccasionDetailsModel> getOccasionDetails(int id) async {
//     final response = await apiService.get(endPoint: 'tribes/occasions/$id');
//     return OccasionDetailsModel.fromJson(response);
//   }
// }
