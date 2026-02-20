import 'package:shajara_tech/core/service/api_service.dart';
import 'package:shajara_tech/features/chat/data/model/messages_model/messages_model.dart';

abstract class ChatRemoteDataSource {
  Future<List<MessagesModel>> getMessages({required int treeId});
  Future<void> sendMessage({
    required int treeId,
    required String messageContent,
  });
}

class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  final ApiService apiService;

  ChatRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List<MessagesModel>> getMessages({required int treeId}) async {
    final response = await apiService.getDynamicData(
      endPoint: 'messages/$treeId',
    );

    return (response as List)
        .map((json) => MessagesModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> sendMessage({
    required int treeId,
    required String messageContent,
  }) async {
    await apiService.post(
      endPoint: 'messages',
      data: {'receiver_id': treeId, 'message': messageContent},
    );
  }
}
