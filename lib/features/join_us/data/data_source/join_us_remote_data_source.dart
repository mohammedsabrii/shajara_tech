import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/join_us/domain/repo/join_us_repo.dart';

abstract class JoinUsRemoteDataSource {
  Future<void> joinUs({required JoinUsModel joinUsModel});
}

class JoinUsRemoteDataSourceImpl implements JoinUsRemoteDataSource {
  final ApiService apiService;

  JoinUsRemoteDataSourceImpl({required this.apiService});
  @override
  Future<void> joinUs({required JoinUsModel joinUsModel}) async {
    await apiService.post(
      endPoint: 'join-us',
      data: {
        'tree_id': joinUsModel.id,
        'user_name': joinUsModel.userName,
        'user_email': joinUsModel.userEmail,
        'family_name': joinUsModel.userFamilyName,
        'birth_date': joinUsModel.userBirthDate,
        'social_status': joinUsModel.userSocialStatus,
        'job': joinUsModel.userJop,
        'user_phone': joinUsModel.userPhone,
        'user_message': joinUsModel.userMessage,
      },
    );
  }
}
