// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdDto _$IdDtoFromJson(Map<String, dynamic> json) {
  return _IdDto.fromJson(json);
}

/// @nodoc
mixin _$IdDto {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdDtoCopyWith<IdDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdDtoCopyWith<$Res> {
  factory $IdDtoCopyWith(IdDto value, $Res Function(IdDto) then) =
      _$IdDtoCopyWithImpl<$Res, IdDto>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$IdDtoCopyWithImpl<$Res, $Val extends IdDto>
    implements $IdDtoCopyWith<$Res> {
  _$IdDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdDtoImplCopyWith<$Res> implements $IdDtoCopyWith<$Res> {
  factory _$$IdDtoImplCopyWith(
          _$IdDtoImpl value, $Res Function(_$IdDtoImpl) then) =
      __$$IdDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$IdDtoImplCopyWithImpl<$Res>
    extends _$IdDtoCopyWithImpl<$Res, _$IdDtoImpl>
    implements _$$IdDtoImplCopyWith<$Res> {
  __$$IdDtoImplCopyWithImpl(
      _$IdDtoImpl _value, $Res Function(_$IdDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$IdDtoImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdDtoImpl with DiagnosticableTreeMixin implements _IdDto {
  const _$IdDtoImpl({required this.value});

  factory _$IdDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdDtoImplFromJson(json);

  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IdDto(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IdDto'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdDtoImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdDtoImplCopyWith<_$IdDtoImpl> get copyWith =>
      __$$IdDtoImplCopyWithImpl<_$IdDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdDtoImplToJson(
      this,
    );
  }
}

abstract class _IdDto implements IdDto {
  const factory _IdDto({required final String value}) = _$IdDtoImpl;

  factory _IdDto.fromJson(Map<String, dynamic> json) = _$IdDtoImpl.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$IdDtoImplCopyWith<_$IdDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
