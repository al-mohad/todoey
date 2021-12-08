import 'package:dartz/dartz.dart';
import 'package:todoey/domain/auth/auth_failure.dart';
import 'package:todoey/domain/auth/custom_user.dart';
import 'package:todoey/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Option<CustomUser> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerUser({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInUser({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<void> signedOut();
}
