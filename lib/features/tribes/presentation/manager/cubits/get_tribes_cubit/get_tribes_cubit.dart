import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/tribes/domain/entitys/tribes_entity.dart';
import 'package:shajara_tech/features/tribes/domain/use_cases/get_tribes_use_case.dart';

part 'get_tribes_state.dart';

class GetTribesCubit extends Cubit<GetTribesState> {
  GetTribesCubit(this.getTribesUseCase) : super(GetTribesInitial());
  final GetTribesUseCase getTribesUseCase;

  static const int _pageSize = 10;
  int _currentPerPage = _pageSize;
  bool _hasMore = true;
  bool _isFetching = false;
  List<TribesEntity> _currentTribes = [];

  Future<void> getTribes() async {
    if (_isFetching) return;
    _isFetching = true;

    if (_currentPerPage == _pageSize) {
      emit(GetTribesLoading());
    } else {
      emit(GetTribesPaginationLoading(_currentTribes));
    }

    final data = await getTribesUseCase.call(perPage: _currentPerPage);

    data.fold(
      (failure) {
        _isFetching = false;
        emit(GetTribesFaliure(errorMessage: failure.message));
      },
      (response) {
        if (response.isEmpty) {
          _isFetching = false;
          emit(GetTribesEmpty());
          return;
        }
        _currentTribes = response;
        _hasMore = response.length == _currentPerPage;
        _isFetching = false;
        emit(GetTribesSuccess(tribes: response, hasMore: _hasMore));
      },
    );
  }

  Future<void> loadMore() async {
    if (!_hasMore || _isFetching) return;
    _currentPerPage += _pageSize;
    await getTribes();
  }
}
