import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todoey/domain/core/value_object.dart';
part 'custom_user.freezed.dart';

@freezed
class CustomUser with _$CustomUser {
  const factory CustomUser({
    required UniqueId id,
    String? email,
    String? name,
    String? photoUrl,
  }) = _CustomUser;

  const CustomUser._();
}
