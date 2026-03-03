import 'package:intl/intl.dart';
import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/join_us/domain/repo/join_us_repo.dart';

abstract class JoinUsRemoteDataSource {
  Future<void> joinUs({
    required JoinUsModel joinUsModel,
    required String token,
  });
}

class JoinUsRemoteDataSourceImpl implements JoinUsRemoteDataSource {
  final ApiService apiService;

  JoinUsRemoteDataSourceImpl({required this.apiService});
  @override
  Future<void> joinUs({
    required JoinUsModel joinUsModel,
    required String token,
  }) async {
    await apiService.post(
      endPoint: 'join-us',
      headers: {'Authorization': 'Bearer $token', 'Accept': 'application/json'},
      data: {
        'tree_id': joinUsModel.id,
        'user_name': joinUsModel.userName,
        'user_email': joinUsModel.userEmail,
        'family_name': joinUsModel.userFamilyName,
        'birth_date': DateFormat(
          'yyyy-MM-dd',
        ).format(DateTime.parse(joinUsModel.userBirthDate)),
        'social_status': joinUsModel.userSocialStatus,
        'job': joinUsModel.userJop,
        'user_phone': joinUsModel.userPhone,
        'user_message': joinUsModel.userMessage,
      },
    );
  }
}
