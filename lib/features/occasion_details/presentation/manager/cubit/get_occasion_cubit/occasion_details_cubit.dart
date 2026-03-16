// import 'package:bloc/bloc.dart';
// import 'package:flutter/foundation.dart';
// import 'package:shajara_tech/features/occasion_details/domain/entity/occasion_details_entity.dart';
// import 'package:shajara_tech/features/occasion_details/domain/use_case/get_occasion_details_use_case.dart';

// part 'occasion_details_state.dart';

// class GetOccasionDetailsCubit extends Cubit<GetOccasionDetailsState> {
//   GetOccasionDetailsCubit(this.getOccasionDetailsUseCase)
//     : super(GetOccasionDetailsInitial());
//   final GetOccasionDetailsUseCase getOccasionDetailsUseCase;
//   Future<void> getOccasionDetails(int id) async {
//     emit(GetOccasionDetailsLoading());
//     final response = await getOccasionDetailsUseCase(id);
//     response.fold(
//       (failure) =>
//           emit(GetOccasionDetailsFailure(errorMessage: failure.message)),
//       (occasionDetails) => emit(GetOccasionDetailsSuccess(occasionDetails)),
//     );
//   }
// }
