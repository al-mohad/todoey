part of 'auth_form_bloc.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        emailAddress: EmailAddress(input: ''),
        password: Password(input: ''),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccess: none(),
      );
}
