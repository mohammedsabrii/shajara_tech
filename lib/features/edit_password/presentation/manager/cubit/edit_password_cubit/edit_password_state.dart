part of 'edit_password_cubit.dart';

@immutable
sealed class EditPasswordState {}

final class EditPasswordInitial extends EditPasswordState {}
final class EditPasswordLoading extends EditPasswordState {}
final class EditPasswordSuccess extends EditPasswordState {}
final class EditPasswordFailure extends EditPasswordState {
  final String errorMessage;

  EditPasswordFailure({required this.errorMessage});
}

