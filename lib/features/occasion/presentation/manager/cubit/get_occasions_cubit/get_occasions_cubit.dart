// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:shajara_tech/features/occasion/domain/entity/occasion_entity.dart';
// import 'package:shajara_tech/features/occasion/domain/use_case/get_occasions_use_case.dart';

// part 'get_occasions_state.dart';

// class GetOccasionsCubit extends Cubit<GetOccasionsState> {
//   GetOccasionsCubit(this.getOccasionsUseCase) : super(GetOccasionsInitial());
//   final GetOccasionsUseCase getOccasionsUseCase;

//   static const int _pageSize = 15;
//   int _currentPerPage = _pageSize;
//   bool _hasMore = true;
//   bool _isFetching = false;
//   List<OccasionEntity> _currentOccasions = [];

//   Future<void> getOccasion() async {
//     if (_isFetching) return;
//     _isFetching = true;

//     if (_currentPerPage == _pageSize) {
//       emit(GetOccasionsLoading());
//     } else {
//       emit(GetOccasionsPaginationLoading(_currentOccasions));
//     }

//     final data = await getOccasionsUseCase.call(perPage: _currentPerPage);

//     data.fold(
//       (failure) {
//         _isFetching = false;
//         emit(GetOccasionsFailure(errorMessage: failure.message));
//       },
//       (response) {
//         _currentOccasions = response;
//         _hasMore = response.length == _currentPerPage;
//         _isFetching = false;
//         emit(GetOccasionsSuccess(occasionEntity: response, hasMore: _hasMore));
//       },
//     );
//   }

//   Future<void> loadMore() async {
//     if (!_hasMore || _isFetching) return;
//     _currentPerPage += _pageSize;
//     await getOccasion();
//   }
// }
