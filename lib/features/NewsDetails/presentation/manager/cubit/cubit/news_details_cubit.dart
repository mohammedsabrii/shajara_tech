import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:shajara_tech/features/NewsDetails/domain/entity/news_details_entity.dart';
import 'package:shajara_tech/features/NewsDetails/domain/use_case/get_news_details_use_case.dart';

part 'news_details_state.dart';

class GetNewsDetailsCubit extends Cubit<GetNewsDetailsState> {
  GetNewsDetailsCubit(this.getNewsDetailsUseCase)
    : super(GetNewsDetailsInitial());
  final GetNewsDetailsUseCase getNewsDetailsUseCase;
  Future<void> getNewsDetails(int id) async {
    emit(GetNewsDetailsLoading());
    final response = await getNewsDetailsUseCase(id);
    response.fold(
      (failure) => emit(GetNewsDetailsFailure(errorMessage: failure.message)),
      (newsDetails) => emit(GetNewsDetailsSuccess(newsDetails)),
    );
  }
}
