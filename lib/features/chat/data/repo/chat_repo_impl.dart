import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shajara_tech/core/errors/failure.dart';
import 'package:shajara_tech/features/chat/data/data_source/chat_remote_data_source.dart';
import 'package:shajara_tech/features/chat/domain/entity/messages_entity.dart';
import 'package:shajara_tech/features/chat/domain/repo/chat_repo.dart';

class ChatRepoImpl implements ChatRepo {
  final ChatRemoteDataSource chatRemoteDataSource;

  ChatRepoImpl({required this.chatRemoteDataSource});
  @override
  Future<Either<Failure, List<MessagesEntity>>> getMessages({
    required int treeId,
  }) async {
    try {
      final data = await chatRemoteDataSource.getMessages(treeId: treeId);
      return Right(data);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> sendMessage({
    required int treeId,
    required String messageContent,
  }) async {
    try {
      await chatRemoteDataSource.sendMessage(
        treeId: treeId,
        messageContent: messageContent,
      );
      return const Right(unit);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
