// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:shajara_tech/features/news/domain/entity/news_entity.dart';
// import 'package:shajara_tech/features/news/domain/use_cases/get_news_use_case.dart';

// part 'get_news_state.dart';

// class GetNewsCubit extends Cubit<GetNewsState> {
//   GetNewsCubit(this.getNewsUseCase) : super(GetNewsInitial());
//   final GetNewsUseCase getNewsUseCase;

//   static const int _pageSize = 15;
//   int _currentPerPage = _pageSize;
//   bool _hasMore = true;
//   bool _isFetching = false;
//   List<NewsEntity> _currentNews = [];

//   Future<void> getNews() async {
//     if (_isFetching) return;
//     _isFetching = true;

//     if (_currentPerPage == _pageSize) {
//       emit(GetNewsLoading());
//     } else {
//       emit(GetNewsPaginationLoading(_currentNews));
//     }

//     final data = await getNewsUseCase.call(perPage: _currentPerPage);

//     data.fold(
//       (failure) {
//         _isFetching = false;
//         emit(GetNewsFailure(errorMessage: failure.message));
//       },
//       (response) {
//         _currentNews = response;
//         _hasMore = response.length == _currentPerPage;
//         _isFetching = false;
//         emit(GetNewsSuccess(newsEntity: response, hasMore: _hasMore));
//       },
//     );
//   }

//   Future<void> loadMore() async {
//     if (!_hasMore || _isFetching) return;
//     _currentPerPage += _pageSize;
//     await getNews();
//   }
// }
