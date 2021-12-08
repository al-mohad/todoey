import 'package:dartz/dartz.dart';
import 'package:todoey/domain/core/failures.dart';
import 'package:todoey/domain/core/value_object.dart';
import 'package:todoey/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const EmailAddress._(this.value);
  factory EmailAddress({required String input}) {
    return EmailAddress._(
      validateEmail(input: input),
    );
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const Password._(this.value);
  factory Password({required String input}) {
    return Password._(
      validatePassword(input: input),
    );
  }
}
