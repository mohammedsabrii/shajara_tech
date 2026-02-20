import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';
import 'package:shajara_tech/features/news/domain/use_cases/get_news_use_case.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit(this.getNewsUseCase) : super(GetNewsInitial());
  final GetNewsUseCase getNewsUseCase;
  Future<void> getNews() async {
    emit(GetNewsLoading());
    final data = await getNewsUseCase.call();
    data.fold(
      (failure) => emit(GetNewsFailure(errorMessage: failure.message)),
      (response) => emit(GetNewsSuccess(newsEntity: response)),
    );
  }
}
