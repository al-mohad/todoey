import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todoey/domain/auth/auth_failure.dart';
import 'package:todoey/domain/auth/i_auth_facade.dart';
import 'package:todoey/domain/auth/value_objects.dart';

part 'auth_form_event.dart';
part 'auth_form_state.dart';
part 'auth_form_bloc.freezed.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final IAuthFacade _authFacade;
  AuthFormBloc(this._authFacade) : super(AuthFormState.initial()) {
    on<AuthFormEvent>(
      (event, emit) async {
        await event.when(
          emailChanged: (emailStr) {
            emit(
              state.copyWith(
                emailAddress: EmailAddress(input: emailStr),
                authFailureOrSuccess: none(),
              ),
            );
          },
          passwordChanged: (passwordStr) {
            emit(state.copyWith(
              password: Password(input: passwordStr),
              authFailureOrSuccess: none(),
            ));
          },
          registerUserPressed: () async {
            Either<AuthFailure, Unit>? failureOrSuccess;
            final isEmailValid = state.emailAddress.isValid();
            final isPasswordValid = state.password.isValid();

            if (isEmailValid && isPasswordValid) {
              emit(
                state.copyWith(
                  isSubmitting: true,
                  showErrorMessages: false,
                  authFailureOrSuccess: none(),
                ),
              );

              failureOrSuccess = await _authFacade.registerUser(
                emailAddress: state.emailAddress,
                password: state.password,
              );
            }
            emit(
              state.copyWith(
                isSubmitting: false,
                showErrorMessages: true,
                authFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            );
          },
          signInPressed: () async {
            Either<AuthFailure, Unit>? failureOrSuccess;
            final isEmailValid = state.emailAddress.isValid();
            final isPasswordValid = state.password.isValid();

            if (isEmailValid && isPasswordValid) {
              emit(
                state.copyWith(
                  isSubmitting: true,
                  showErrorMessages: false,
                  authFailureOrSuccess: none(),
                ),
              );

              failureOrSuccess = await _authFacade.signInUser(
                emailAddress: state.emailAddress,
                password: state.password,
              );
            }
            emit(
              state.copyWith(
                isSubmitting: false,
                showErrorMessages: true,
                authFailureOrSuccess: optionOf(failureOrSuccess),
              ),
            );
          },
          signInWithGooglePressed: () async {
            final Either<AuthFailure, Unit> failureOrSuccess;
            emit(
              state.copyWith(
                isSubmitting: true,
                showErrorMessages: false,
                authFailureOrSuccess: none(),
              ),
            );
            failureOrSuccess = await _authFacade.signInWithGoogle();
            emit(
              state.copyWith(
                isSubmitting: false,
                authFailureOrSuccess: some(failureOrSuccess),
              ),
            );
          },
        );
      },
    );
  }
}
