// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserInfoDto _$UpdateUserInfoDtoFromJson(Map<String, dynamic> json) {
  return _UpdateUserInfoDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserInfoDto {
  String? get name => throw _privateConstructorUsedError;
  String? get email =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  String? get birth_date => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserInfoDtoCopyWith<UpdateUserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserInfoDtoCopyWith<$Res> {
  factory $UpdateUserInfoDtoCopyWith(
          UpdateUserInfoDto value, $Res Function(UpdateUserInfoDto) then) =
      _$UpdateUserInfoDtoCopyWithImpl<$Res, UpdateUserInfoDto>;
  @useResult
  $Res call({String? name, String? email, String? birth_date, String? gender});
}

/// @nodoc
class _$UpdateUserInfoDtoCopyWithImpl<$Res, $Val extends UpdateUserInfoDto>
    implements $UpdateUserInfoDtoCopyWith<$Res> {
  _$UpdateUserInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? birth_date = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birth_date: freezed == birth_date
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateUserInfoDtoImplCopyWith<$Res>
    implements $UpdateUserInfoDtoCopyWith<$Res> {
  factory _$$UpdateUserInfoDtoImplCopyWith(_$UpdateUserInfoDtoImpl value,
          $Res Function(_$UpdateUserInfoDtoImpl) then) =
      __$$UpdateUserInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? email, String? birth_date, String? gender});
}

/// @nodoc
class __$$UpdateUserInfoDtoImplCopyWithImpl<$Res>
    extends _$UpdateUserInfoDtoCopyWithImpl<$Res, _$UpdateUserInfoDtoImpl>
    implements _$$UpdateUserInfoDtoImplCopyWith<$Res> {
  __$$UpdateUserInfoDtoImplCopyWithImpl(_$UpdateUserInfoDtoImpl _value,
      $Res Function(_$UpdateUserInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? birth_date = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$UpdateUserInfoDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      birth_date: freezed == birth_date
          ? _value.birth_date
          : birth_date // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserInfoDtoImpl
    with DiagnosticableTreeMixin
    implements _UpdateUserInfoDto {
  const _$UpdateUserInfoDtoImpl(
      {this.name, this.email, this.birth_date, this.gender});

  factory _$UpdateUserInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserInfoDtoImplFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
// ignore: non_constant_identifier_names
  @override
  final String? birth_date;
  @override
  final String? gender;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UpdateUserInfoDto(name: $name, email: $email, birth_date: $birth_date, gender: $gender)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UpdateUserInfoDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('birth_date', birth_date))
      ..add(DiagnosticsProperty('gender', gender));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserInfoDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birth_date, birth_date) ||
                other.birth_date == birth_date) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, birth_date, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserInfoDtoImplCopyWith<_$UpdateUserInfoDtoImpl> get copyWith =>
      __$$UpdateUserInfoDtoImplCopyWithImpl<_$UpdateUserInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserInfoDto implements UpdateUserInfoDto {
  const factory _UpdateUserInfoDto(
      {final String? name,
      final String? email,
      final String? birth_date,
      final String? gender}) = _$UpdateUserInfoDtoImpl;

  factory _UpdateUserInfoDto.fromJson(Map<String, dynamic> json) =
      _$UpdateUserInfoDtoImpl.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override // ignore: non_constant_identifier_names
  String? get birth_date;
  @override
  String? get gender;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserInfoDtoImplCopyWith<_$UpdateUserInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
