part of 'get_news_cubit.dart';

@immutable
sealed class GetNewsState {}

final class GetNewsInitial extends GetNewsState {}

final class GetNewsLoading extends GetNewsState {}

final class GetNewsEmpty extends GetNewsState {}

final class GetNewsSuccess extends GetNewsState {
  final List<NewsEntity> newsEntity;

  GetNewsSuccess({required this.newsEntity});
}

final class GetNewsFailure extends GetNewsState {
  final String errorMessage;

  GetNewsFailure({required this.errorMessage});
}
