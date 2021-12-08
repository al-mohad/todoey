// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'custom_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomUserTearOff {
  const _$CustomUserTearOff();

  _CustomUser call(
      {required UniqueId id, String? email, String? name, String? photoUrl}) {
    return _CustomUser(
      id: id,
      email: email,
      name: name,
      photoUrl: photoUrl,
    );
  }
}

/// @nodoc
const $CustomUser = _$CustomUserTearOff();

/// @nodoc
mixin _$CustomUser {
  UniqueId get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomUserCopyWith<CustomUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomUserCopyWith<$Res> {
  factory $CustomUserCopyWith(
          CustomUser value, $Res Function(CustomUser) then) =
      _$CustomUserCopyWithImpl<$Res>;
  $Res call({UniqueId id, String? email, String? name, String? photoUrl});
}

/// @nodoc
class _$CustomUserCopyWithImpl<$Res> implements $CustomUserCopyWith<$Res> {
  _$CustomUserCopyWithImpl(this._value, this._then);

  final CustomUser _value;
  // ignore: unused_field
  final $Res Function(CustomUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CustomUserCopyWith<$Res> implements $CustomUserCopyWith<$Res> {
  factory _$CustomUserCopyWith(
          _CustomUser value, $Res Function(_CustomUser) then) =
      __$CustomUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String? email, String? name, String? photoUrl});
}

/// @nodoc
class __$CustomUserCopyWithImpl<$Res> extends _$CustomUserCopyWithImpl<$Res>
    implements _$CustomUserCopyWith<$Res> {
  __$CustomUserCopyWithImpl(
      _CustomUser _value, $Res Function(_CustomUser) _then)
      : super(_value, (v) => _then(v as _CustomUser));

  @override
  _CustomUser get _value => super._value as _CustomUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_CustomUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CustomUser extends _CustomUser {
  const _$_CustomUser({required this.id, this.email, this.name, this.photoUrl})
      : super._();

  @override
  final UniqueId id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'CustomUser(id: $id, email: $email, name: $name, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, photoUrl);

  @JsonKey(ignore: true)
  @override
  _$CustomUserCopyWith<_CustomUser> get copyWith =>
      __$CustomUserCopyWithImpl<_CustomUser>(this, _$identity);
}

abstract class _CustomUser extends CustomUser {
  const factory _CustomUser(
      {required UniqueId id,
      String? email,
      String? name,
      String? photoUrl}) = _$_CustomUser;
  const _CustomUser._() : super._();

  @override
  UniqueId get id;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$CustomUserCopyWith<_CustomUser> get copyWith =>
      throw _privateConstructorUsedError;
}
