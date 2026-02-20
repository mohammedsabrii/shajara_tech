import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/home/data/model/occasions_model/occasion_data.dart';

abstract class OccasionRemoteDataSource {
  Future<List<OccasionData>> getOccasion();
}

class OccasionRemoteDataSourceImpl implements OccasionRemoteDataSource {
  final ApiService apiService;

  OccasionRemoteDataSourceImpl({required this.apiService});
 @override
Future<List<OccasionData>> getOccasion() async {
  final response = await apiService.get(endPoint: 'tribes/occasions?per_page=15');
  final data = response['data'] as List;
  return data.map((occasion) => OccasionData.fromJson(occasion)).toList();
}
}
