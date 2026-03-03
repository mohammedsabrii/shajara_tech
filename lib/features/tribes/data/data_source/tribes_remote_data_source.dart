import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/tribes/data/model/tribe_details/tribe_details.dart';
import 'package:shajara_tech/features/tribes/data/model/tribes/data.dart';
import 'package:shajara_tech/features/tribes/data/model/tribes/tribes.dart';

abstract class TribesRemoteDataSource {
  Future<List<TribesData>> getTribes();
  Future<TribeDetails> getTribeDetails({required int tribeId});
}

class TribesRemoteDataSourceImpl implements TribesRemoteDataSource {
  final ApiService apiService;

  TribesRemoteDataSourceImpl({required this.apiService});

  @override
  Future<List<TribesData>> getTribes() async {
    final response = await apiService.get(endPoint: 'tribes?per_page=19');
    final tribesModel = Tribes.fromJson(response);
    return tribesModel.data ?? [];
  }

  @override
  Future<TribeDetails> getTribeDetails({required int tribeId}) async {
    final response = await apiService.get(endPoint: 'tribes/$tribeId');
    return TribeDetails.fromJson(response);
  }
}
