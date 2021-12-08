import 'package:dartz/dartz.dart';
import 'package:todoey/domain/core/errors.dart';
import 'package:todoey/domain/core/failures.dart';
import 'package:uuid/uuid.dart';

abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;
  bool isValid() => value.isRight();

  ///Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((failure) => throw UnexpectedValueError(failure), id);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  const UniqueId._(this.value);
  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString({required String uniqueId}) {
    return UniqueId._(right(uniqueId));
  }
}
