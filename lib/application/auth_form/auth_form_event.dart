part of 'auth_form_bloc.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.emailChanged({required String email}) =
      EmailChanged;
  const factory AuthFormEvent.passwordChanged({required String password}) =
      PasswordChanged;
  const factory AuthFormEvent.registerUserPressed() = RegisterUserPressed;
  const factory AuthFormEvent.signInPressed() = SignInPressed;
  const factory AuthFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
