// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jwt_token_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JwtTokenDto _$JwtTokenDtoFromJson(Map<String, dynamic> json) {
  return _JwtTokenDto.fromJson(json);
}

/// @nodoc
mixin _$JwtTokenDto {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JwtTokenDtoCopyWith<JwtTokenDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JwtTokenDtoCopyWith<$Res> {
  factory $JwtTokenDtoCopyWith(
          JwtTokenDto value, $Res Function(JwtTokenDto) then) =
      _$JwtTokenDtoCopyWithImpl<$Res, JwtTokenDto>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$JwtTokenDtoCopyWithImpl<$Res, $Val extends JwtTokenDto>
    implements $JwtTokenDtoCopyWith<$Res> {
  _$JwtTokenDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JwtTokenDtoImplCopyWith<$Res>
    implements $JwtTokenDtoCopyWith<$Res> {
  factory _$$JwtTokenDtoImplCopyWith(
          _$JwtTokenDtoImpl value, $Res Function(_$JwtTokenDtoImpl) then) =
      __$$JwtTokenDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$JwtTokenDtoImplCopyWithImpl<$Res>
    extends _$JwtTokenDtoCopyWithImpl<$Res, _$JwtTokenDtoImpl>
    implements _$$JwtTokenDtoImplCopyWith<$Res> {
  __$$JwtTokenDtoImplCopyWithImpl(
      _$JwtTokenDtoImpl _value, $Res Function(_$JwtTokenDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$JwtTokenDtoImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JwtTokenDtoImpl with DiagnosticableTreeMixin implements _JwtTokenDto {
  const _$JwtTokenDtoImpl({required this.token});

  factory _$JwtTokenDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JwtTokenDtoImplFromJson(json);

  @override
  final String token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JwtTokenDto(token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JwtTokenDto'))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JwtTokenDtoImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JwtTokenDtoImplCopyWith<_$JwtTokenDtoImpl> get copyWith =>
      __$$JwtTokenDtoImplCopyWithImpl<_$JwtTokenDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JwtTokenDtoImplToJson(
      this,
    );
  }
}

abstract class _JwtTokenDto implements JwtTokenDto {
  const factory _JwtTokenDto({required final String token}) = _$JwtTokenDtoImpl;

  factory _JwtTokenDto.fromJson(Map<String, dynamic> json) =
      _$JwtTokenDtoImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$JwtTokenDtoImplCopyWith<_$JwtTokenDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
