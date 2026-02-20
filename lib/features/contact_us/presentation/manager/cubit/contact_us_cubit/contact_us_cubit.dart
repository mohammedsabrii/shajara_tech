import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shajara_tech/features/contact_us/domain/use_case/contact_us_use_case.dart';

part 'contact_us_state.dart';

class ContactUsCubit extends Cubit<ContactUsState> {
  ContactUsCubit(this.contactUsUseCase) : super(ContactUsInitial());
  final ContactUsUseCase contactUsUseCase;
  Future<void> contactUs({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    emit(ContactUsLoading());
    final data = await contactUsUseCase.call(
      name: name,
      email: email,
      subject: subject,
      message: message,
    );
    data.fold(
      (faliure) => emit(ContactUsFailure(errorMessage: faliure.message)),
      (response) => emit(ContactUsSuccess()),
    );
  }
}
